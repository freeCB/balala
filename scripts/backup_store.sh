#!/bin/bash

# 定义一个函数来显示帮助信息
show_help() {
    echo "Usage: $0 [-d dir_path], default current directory"
}

# 定义一个函数，将数组转换为字符串
array_to_string() {
    local array=("$@")  # 将函数参数作为数组
    local string=""     # 初始化空字符串

    # 使用for循环拼接数组元素，并使用空格作为分隔符
    for item in "${array[@]}"; do
#        echo "$item,"
        string+="${item}, "  # 将数组元素添加到字符串末尾，并加上空格
    done

    # 去除字符串末尾的空格
    local trimmed_string="${string%, }"
    echo "[ $trimmed_string ]"  # 返回拼接后的字符串
}

# 初始化文件路径变量
dir_path="."

# 处理命令行参数
while getopts "hd:" opt; do
    case $opt in
        h)
            show_help
            exit 0
            ;;
        d)
            dir_path=$OPTARG
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            show_help
            exit 1
            ;;
    esac
done

# 定义备份目录
mkdir -p "$dir_path"
BACKUP_DIR="$(readlink -f "$dir_path")"

echo "Backup directory: $dir_path"

# 检查文件是否存在
if [ ! -d "$BACKUP_DIR" ]; then
    echo "Dir does not exist. $BACKUP_DIR"
    exit 1
fi

# 读取.env文件中的VERSION变量
if [ -f .env ]; then
  source .env
fi

# 检查VERSION变量是否定义
if [ -z "$VERSION" ]; then
  echo "VERSION variable is not defined in .env file."
  exit 1
fi

# 获取所有以 项目名 前缀的卷名
volume_names=$(docker volume ls --format "{{.Name}}" | grep "^${COMPOSE_PROJECT_NAME}")


echo "Version: $VERSION"
echo "Volumes: $(array_to_string $volume_names)"

# 构建挂载卷的参数
mount_params=""
for volume_name in $volume_names; do
  mount_params="$mount_params -v $volume_name:/volumes/$volume_name"
done

# 创建带有版本号的备份文件的名称
backup_file="backup_${VERSION}_$(date +%Y%m%d-%H%M%S).tar"

# 创建一个临时容器并挂载所有卷，然后备份
docker run --rm \
  --name temp_backup_container \
  $mount_params \
  -v $BACKUP_DIR:/backup/ \
  busybox \
  sh -c "cd / && tar cf backup/$backup_file volumes"

if [ $? -eq 0 ]; then
  echo "Backup completed: $backup_file"
  exit 0
else
  echo "Backup failed"
  exit 1
fi
