#!/bin/bash

# 定义一个函数来显示帮助信息
show_help() {
    echo "Usage: $0 [-f file_path]"
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
file_path=""

# 处理命令行参数
while getopts "hf:" opt; do
    case $opt in
        h)
            show_help
            exit 0
            ;;
        f)
            file_path=$OPTARG
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            show_help
            exit 1
            ;;
    esac
done

# 如果没有提供文件路径，则询问用户
if [ -z "$file_path" ]; then
    show_help
    exit 1
fi

# 检查文件是否存在
if [ ! -f "$file_path" ]; then
  echo "$file_path does not exist."
  exit 1
fi

# 提取卷名列表
volume_names=$(tar -tf "$file_path" | awk -F "/" '{print $2}' | grep -v '^$' | uniq)

echo "Volumes: $(array_to_string $volume_names)"

# 构建挂载卷的参数
mount_params=""
for volume_name in $volume_names; do
  mount_params="$mount_params -v $volume_name:/volumes/$volume_name"
done


# 创建临时容器并恢复卷数据
docker run --rm \
  --name temp_restore_container \
  $mount_params \
  -v "$PWD/$file_path:/backup.tar" \
  busybox \
  sh -c "tar xf /backup.tar -C /volumes --strip-components=1"

if [ $? -eq 0 ]; then
  echo "Restore completed."
  exit 0
else
  echo "Restore failed."
  exit 1
fi
