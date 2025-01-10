#!/bin/bash

# 定义一个函数来显示帮助信息
show_help() {
    echo "Usage: $0 [-f FILE_PATH]"
    echo "  -f FILE_PATH  Path to the backup file"
}

# 定义一个函数，将数组转换为字符串
array_to_string() {
    local IFS=','  # 设置内部字段分隔符为逗号
    echo "[$*]"    # 使用通配符展开数组元素，并用逗号分隔
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
            file_path="$OPTARG"
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

# 如果没有提供文件路径，则显示帮助信息并退出
if [ -z "$file_path" ]; then
    echo "Error: No file path provided." >&2
    show_help
    exit 1
fi

# 检查文件是否存在
if [ ! -f "$file_path" ]; then
    echo "Error: File does not exist: $file_path" >&2
    exit 1
fi

# 检查文件是否为tar格式
if ! tar -tf "$file_path" >/dev/null 2>&1; then
    echo "Error: $file_path is not a valid tar file."
    exit 1
fi

# 检查文件是否为备份文件
if ! tar -tf "$file_path" | grep -q '^volumes/'; then
    echo "Error: $file_path is not a backup file."
    exit 1
fi

# 转换为绝对路径
file_path=$(readlink -f "$file_path")

# 提取卷名列表
volume_names=$(tar -tf "$file_path" | awk -F "/" '{if (NR>1) print $2}' | grep -v '^$' | uniq)

# 检查是否有卷名提取
if [ -z "$volume_names" ]; then
    echo "Error: No volumes found in the backup file." >&2
    exit 1
fi

echo "Volumes: $(array_to_string $volume_names)"

# 构建挂载卷的参数
mount_params=""
for volume_name in $volume_names; do
    mount_params+=" -v $volume_name:/volumes/$volume_name"
done

# 预创建容器，避免出现warning
docker compose create

# 创建临时容器并恢复卷数据
docker run --rm \
    --name temp_restore_container \
    $mount_params \
    -v "$file_path:/backup.tar" \
    busybox \
    sh -c "tar xf /backup.tar -C /volumes --strip-components=1"

# 检查恢复是否成功
if [ $? -eq 0 ]; then
    echo "Restore completed successfully."
    exit 0
else
    echo "Error: Restore failed." >&2
    exit 1
fi