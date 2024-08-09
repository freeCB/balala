## 目录结构
```
+ balala
  + .env                // 启动配置文件
  + compose.yaml        // docker-compose配置文件
  + README.md           // 项目说明
```

## 开始：

```
git clone https://github.com/freeCB/balala.git
```

```
cd balala
```
### 启动
```
docker compose up -d
```

### 访问
打开游览器访问：http://localhost:8080/

超级管理员

用户名：**super**
初始密码：**Passw@rd**

### 停止
```
docker compose stop
```

### 重启
```
docker compose restart
```


## 启动配置修改
配置文件：.env
```shell
# 项目名称
COMPOSE_PROJECT_NAME="balala"
# mysql root 账号密码
MYSQL_ROOT_PASSWORD="123456"
# mysql 映射端口号
MYSQL_PORT=3306
# web 映射端口号
WEB_PORT=8080
# 版本
VERSION=v1.3.3.1

# IM配置
# halala的访问地址
TEA_IM_DOMAIN="http://example.com" 
# halala管理后台配置的 balala 私钥
TEA_IM_PRIVATE_KEY="you_private_key"
# halala管理后台配置的 balala 平台代码
TEA_IM_PLATFORM_CODE="balala"
```


## 数据备份与恢复

### 备份
```shell
# 停止容器
docker compose stop

# 执行备份脚本
./scripts/backup_store.sh
# 默认在当前目录生成，文件示例：`backup_v1.3.3.1_20240619-181758.tar`

# 重新启动容器
docker compose up -d
```

### 恢复
```shell
# 停止容器
docker compose stop

# 执行恢复脚本
./scripts/backup_recovery.sh -f <生成的备份文件>
# 示例：./scripts/backup_recovery.sh -f backup_v1.3.3.1_20240619-181758.tar

# 重新启动容器
docker compose up -d
```

## 与halala关联

### 版本要求
balala >= v1.3.6.2

### 配置
1. 修改 .env 文件中
```shell
# halala的访问地址
TEA_IM_DOMAIN="http://example.com" 
# halala管理后台配置的 balala 私钥
TEA_IM_PRIVATE_KEY="you_private_key"
# halala管理后台配置的 balala 平台代码
TEA_IM_PLATFORM_CODE="balala"
```
2. 重新启动容器
```shell
docker compose stop
docker compose up -d
```

3. 修改balala后台配置

登录balala超管账号(super)

点击 `左下角头像` -> `管理系统` -> `系统设置` -> `网站访问地址`

配置 balala 的外部访问地址，示例：`http://example.com`
