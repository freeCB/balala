#!/bin/bash

# 定义一个函数来显示帮助信息
show_help() {
    echo "Usage: $0 [-d DIR] [-m MODE]"
    echo "Options:"
    echo "  -d DIR      Backup directory (default: current directory)"
    echo "  -m MODE     Backup mode: full, data, or files (default: full)"
}

# 定义一个函数，将数组转换为字符串
array_to_string() {
    local IFS=','  # 设置内部字段分隔符为逗号
    echo "[$*]"    # 使用通配符展开数组元素，并用逗号分隔
}

# 初始化文件路径变量
dir_path="."

# 初始化备份模式变量
mode="full"

# 处理命令行参数
while getopts ":hd:m:" opt; do
    case $opt in
        h)
            show_help
            exit 0
            ;;
        d)
            dir_path="$OPTARG"
            ;;
        m)
            mode="$OPTARG"
            ;;
        \?)
            echo "Error: Invalid option: -$OPTARG" >&2
            show_help
            exit 1
            ;;
        :)
            echo "Error: Option -$OPTARG requires an argument." >&2
            show_help
            exit 1
            ;;
    esac
done

# 检查 mode 是否合法
if ! [[ "$mode" =~ ^(full|data|files)$ ]]; then
    echo "Error: Invalid mode. Must be 'full', 'data', or 'files'." >&2
    show_help
    exit 1
fi

# 定义备份目录
mkdir -p "$dir_path"
BACKUP_DIR="$(readlink -f "$dir_path")"

echo "Backup directory: $BACKUP_DIR"

# 检查文件是否存在
if [ ! -d "$BACKUP_DIR" ]; then
    echo "Error: Directory does not exist: $BACKUP_DIR"
    exit 1
fi

# 读取 .env 文件中的 VERSION 变量
if [ -f .env ]; then
    source .env
else
    echo "Error: .env file not found."
    exit 1
fi

# 检查 VERSION 变量是否定义
if [ -z "$VERSION" ]; then
    echo "Error: VERSION variable is not defined in .env file."
    exit 1
fi

# 根据模式选择要备份的卷
case "$mode" in
    full)
        echo "Backup full"
        volume_names=$(docker compose config --volumes)
        backup_suffix="_full"
        ;;
    data)
        echo "Backup data only"
        volume_names=$(docker compose config --volumes | grep -v "^upload_files$")
        backup_suffix="_data"
        ;;
    files)
        echo "Backup upload files only"
        volume_names=$(docker compose config --volumes | grep -E "^upload_files$")
        backup_suffix="_files"
        ;;
esac

# 检查是否有卷需要备份
if [ -z "$volume_names" ]; then
    echo "No volumes found for backup."
    exit 1
fi

# 检查 COMPOSE_PROJECT_NAME 是否已定义
if [ -z "$COMPOSE_PROJECT_NAME" ]; then
    echo "Error: COMPOSE_PROJECT_NAME is not set"
    exit 1
fi

# 给 volumes 加上项目名前缀
for volume_name in $volume_names; do
    echo "Volume: $volume_name"
    volume_array+=("${COMPOSE_PROJECT_NAME}_${volume_name}")
done

echo "Version: $VERSION"
echo "Volumes: $(array_to_string "${volume_array[@]}")"

# 构建备份文件名
backup_file="backup_${COMPOSE_PROJECT_NAME}_${VERSION}_$(date +%Y%m%d-%H%M%S)${backup_suffix}.tar"

# 构建挂载卷的参数
mount_params=""
for volume_name in "${volume_array[@]}"; do
    mount_params+=" -v $volume_name:/volumes/$volume_name"
done

# 创建一个临时容器并挂载所有卷，然后备份
docker run --rm \
    --name temp_backup_container \
    $mount_params \
    -v "$BACKUP_DIR:/backup" \
    busybox \
    sh -c "cd / && tar cf /backup/$backup_file volumes"

# 检查备份是否成功
if [ $? -eq 0 ]; then
    echo "Backup completed: $BACKUP_DIR/$backup_file"
else
    echo "Backup failed. Please check the error messages above."
    exit 1
fi
