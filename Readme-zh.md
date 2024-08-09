<!-- banner -->
<div align="center">

  <a href="https://github.com/freeCB/balala">
      <img src="https://github.com/freeCB/balala/blob/main/.github/aa/banner.jpg" style="border-radius:8px; width:100%; " alt="Balala｜协作效率标准化管理工具"/>
  </a>
  
</div>

<br/>

<!-- logo && tittle -->

<div align="center" >
  
# <img src="https://github.com/freeCB/balala/blob/main/.github/aa/logo.jpg" style="border-radius:4px; width:32px; margin-right: 8px;" > Balala｜协作效率标准化管理工具

</div>

<!-- 快捷跳转 -->
<div align="center">

[English](https://github.com/freeCB/balala/blob/main/README.zh-EN.md) · **简体中文** · [更新日志](https://github.com/freeCB/balala/releases) · [文档](https://github.com/freeCB/balala/releases) · [BUG 反馈](https://github.com/freeCB/balala/issues) · [讨论专区](https://github.com/freeCB/balala/discussions)· ⚡️[快速部署](https://github.com/Bluesky94z/-12/blob/master/readme-zh.md#%EF%B8%8F-%E5%BF%AB%E9%80%9F%E9%83%A8%E7%BD%B2)

</div>

<!-- 版本/数据 -->

<div align="center"">

[![GitHub Release]][GitHub Release link]&#8194;
[![web vercel]][web vercel link]&#8194;
[![GitHub Discussions]][GitHub Discussions link]&#8194;
[![GitHub issues]][GitHub issues link]&#8194;
[![GitHub star]][GitHub star link]&#8194;

</div>

<!--  快捷分享 -->

<div align="center">

<!-- **分享 Balala 给你的好友** -->

[![share-tel-shield]][share-tel-link]&#8194;
[![share-x-shield]][share-x-link]&#8194;
[![share-whatsapp-shield]][share-whatsapp-link]&#8194;

<!-- [![share-weibo-shield]][share-weibo-link]&#8194; -->

</div>

<br/>
<br/>

<!-- 前言 -->

## 👋🏻 关于 CZDesgin

我们是一群各个领域的专业工程师，因为热爱而走到了一起。<br>
团队成员背景多样，涵盖了从技术开发到市场营销的各个领域，形成了一个互补性强的综合性团队。<br>
在畅谈的时候，我们觉得高效的沟通和协作，是实现项目的高质量交付重要的环节。<br>
因此，Balala 应运而生。<br>
在未来，我们希望我们能有更多有趣的想法迸发。<br>
期待与你们的又一次遇见 ⭐

<br>

<!-- 内容 -->

## - 📦产品特点

- **本地部署**：降低企业信息安全风险，具有更高的灵活性和可扩展性。<br/>
- **轻量管理**：搭建可视化项目进度，简单易用，便捷管理，实时跟进，驱动项目成功。<br/>
- **敏捷高效**：可量化目标跟踪网络，从协作效率、交付质量的维度，准确地评估和改善研发效能。<br/>
- **团队协作**：目标管理与任务分配，标准化工作流，多人实时协同，打破团队数据孤岛。<br/>
- **数字调控**：打通企业研发管理全流程与全场景，实现“云端”项目及成员的及时调控。<br/>

<br/>

<!-- 部署 -->

## - 🧩环境要求

- 安装前提： **Docker** ≥`v23.0.1` 和 **Docker Compose** ≥`v2.0+`
- 支持环境： `Centos/Debian/Ubuntu/mac0S/Windows`

<br/>
<br/>

# ⚡️ 快速部署

### - `Docker` 版 ，克隆项目到您的本地或服务器：

1. 通过 GitHub 克隆项目：

```shell
git clone https://github.com/freeCB/balala.git
```

2. 进入目录

```shell
cd balala
```

3. 启动项目

```shell
docker compose up -d
```

4. 打开游览器 `web` 服务：

```
http://localhost:8080
```

5. 初始账号信息：

```shell
# 超级管理员
用户名：super
初始密码：Passw@rd
```

<br/>
<br/>

<!-- 维护 -->

# 😈 管理&维护

### - 常用命令：

- 停止服务

```shell
docker compose stop
```

- 重启服务

```shell
docker compose restart
```

<br>

---

### - 升级更新：


> [!TIP]
> 在升级之前请备份好你的数据！

- 1、修改.env文件，将版本号改成要升级的目标版本。
```
VERSION=vx.x.x.x
```
注：其中v.x.x.x 为你需要升级的版本号。👉[（查看版本号）](https://github.com/freeCB/balala/releases)
- 2、重新启动
```
docker compose down
```
```
docker compose up -d
```

<br>

---

### - 备份还原：

#### （一）备份：

- 1、停止容器

```shell
docker compose stop
```

- 2、执行备份脚本

```shell
./scripts/backup_store.sh
```

- 3、重新启动容器

```shell
docker compose stop
```

#### （二）还原：

- 1、停止容器

```shell
docker compose stop
```

- 2、执行恢复脚本

```shell
./scripts/backup_recovery.sh -f <生成的备份文件>
```

- 3、重新启动容器

```shell
docker compose up -d
```

<br/>

---

<!-- 自定义参数 -->

### - 可支持的参数变量：

#### （一）启动配置文件修改： `.env`

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
VERSION=v1.3.3
```

#### （二）自定义“项目信息参数”：

##### 需要连接到`mysql`，进行 `sql`语句命令操作

1. 自定义 `LOGO`

```sql
update config set value = "https://example.com/logo.png" where config_key = "balala.logo";
```

> `value` 的值是图片的 `url`，也可以是 `base64` ；

<br/>

2. 网页标题

```sql
update config set value = "new title" where config_key = "balala.title";
```

<br/>

3. 修改项目地址

```sql
update config set value = "https://example.com" where config_key = "notify.redirect.domain";
```

<br>

<!-- 框架介绍 -->

### - 目录构成

```bash
├── balala
    ├── env                // 启动配置文件
    ├── compose.yaml        // docker-compose配置文件
    ├── README.md           // 项目说明
```

<br/>
<br/>

<!-- 常见问题解释 -->

# 📕 常见 FAQ

#### 1. 如何确认当前版本 ?

- 部署或更新完毕启动后，访问登录页，在其左下角可查看当前版本；

  - 与 GitHub releases 比对当前最新版本是否一致。([👉 查看当前版本](https://github.com/freeCB/balala/releases))<br/>

- 查看位置参照图样如下 👇：<br/><br/> <img src="https://github.com/freeCB/balala/blob/main/.github/aa/jietu.jpg" width="100%">

---

#### 2. 重新部署是否影响已有数据库 ？

- 目前部署和更新相当于是 在 dockerhub 上重新下载镜像，启动新的容器。<br/>
- 如果有出现升级出错，绝大多数情况是由于新的镜像下载失败，大概率是网络问题，请具体查看打印信息，排除网络因素。<br/>

---

#### 3. 部署网络速度慢 ？

在个别区域监管的原因，访问某些国外的 Docker 镜像仓库可能会受到限制，这可能会导致下载失败或更新缓慢。针对这种情况，可以采取以下几种策略来提高部署和更新的成功率：

- 使用国内镜像源：为了加快下载速度和成功率，您可以选择使用国内的 Docker 镜像源，如阿里云、腾讯云、华为云等，这些国内服务商都提供了官方的镜像同步服务。
- 优化网络环境：如果条件允许，可以通过使用更稳定的网络服务，或者配置网络代理、VPN 等方式来优化网络环境，确保能够顺利访问到 Docker Hub 等国外镜像仓库。

---

#### - [👉 查看 FAQ 专区](https://github.com/freeCB/balala/discussions/categories/q-a-答疑区)

<br />

<!-- 其他补充 -->

# 👋🏻 其他

⭐️ 如果你有更多的奇思妙想，也许你认可这个产品并想持续关注，又或者纯粹吃瓜<br/>
🤝 请给我们提建议反馈吧～<br/>

---

<br/>

<!-- 联系与支持 -->

```
Mail：2023czdesign#gmail.com    //请将 “#” 修改为“@”
```

<br/>

`Design By CZDESGIN. `<br />

<!-- [logo]: https://github.com/freeCB/balala/blob/master/balala%20%E7%9A%84logo.jpg=width="15px" -->
<!--版本/数据 -->

[GitHub Release]: https://img.shields.io/github/v/release/freeCB/balala?style=flat&labelColor=%23000000&color=%2375FA61
[GitHub Release link]: https://github.com/freeCB/balala/releases
[web vercel]: https://img.shields.io/badge/build-online-brightgreen?style=flat&logo=vercel&label=Balala&labelColor=%23000000&color=%2373FBFD
[web vercel link]: https://github.com/freeCB
[GitHub Discussions]: https://img.shields.io/github/discussions/freeCB/balala?style=flat&labelColor=%23000000&color=%23EA3FF7
[GitHub Discussions link]: https://github.com/freeCB/balala/discussions
[GitHub issues]: https://img.shields.io/github/issues/freeCB/balala?style=flat&labelColor=%23000000&color=%23FFF840
[GitHub issues link]: https://github.com/freeCB/balala/issues
[GitHub star]: https://img.shields.io/github/stars/freeCB?style=flat&logo=%20&labelColor=%23000000&color=%23FF8787
[GitHub star link]: https://github.com/freeCB/balala/stargazers

<!-- 版本/数据 END -->

<!--快捷分享 -->

[share-tel-shield]: https://img.shields.io/badge/Share%20%20Tel-black?style=flat-square&logo=telegram
[share-tel-link]: https://t.me/share/url%22?text=https://t.me/share/url%22?text=%E6%8E%A8%E8%8D%90%E4%B8%80%E4%B8%AA%20GitHub%20%E5%BC%80%E6%BA%90%E9%A1%B9%E7%9B%AE%20%F0%9F%A4%AF%20Balala%20-%20%E5%BC%80%E6%BA%90%E7%9A%84%E3%80%81%E5%8F%AF%E6%89%A9%E5%B1%95%E7%9A%84%E9%A1%B9%E7%9B%AE%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E3%80%82%0A%E5%AE%83%E6%94%AF%E6%8C%81%E4%B8%80%E9%94%AE%E5%85%8D%E8%B4%B9%E4%B8%93%E5%B1%9E%E7%9A%84%E9%A1%B9%E7%9B%AE%E7%A9%BA%E9%97%B4%EF%BC%8C%E5%B8%AE%E5%8A%A9%E4%BC%81%E4%B8%9A%E6%9B%B4%E8%BD%BB%E4%BE%BF%E7%9A%84%E7%AE%A1%E7%90%86%E9%A1%B9%E7%9B%AE%E8%BF%9B%E5%BA%A6&url=https://github.com/freeCB/balala
[share-x-shield]: https://img.shields.io/badge/Share%20%20X-black?style=flat-square&logo=X
[share-x-link]: https://x.com/intent/post?hashtags=chatbot%2CchatGPT%2CopenAI&text=%E6%8E%A8%E8%8D%90%E4%B8%80%E4%B8%AA+GitHub+%E5%BC%80%E6%BA%90%E9%A1%B9%E7%9B%AE+%F0%9F%A4%AF+Balala+-+%E5%BC%80%E6%BA%90%E7%9A%84%E3%80%81%E5%8F%AF%E6%89%A9%E5%B1%95%E7%9A%84%E9%A1%B9%E7%9B%AE%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E3%80%82%0A%E5%AE%83%E6%94%AF%E6%8C%81%E4%B8%80%E9%94%AE%E5%85%8D%E8%B4%B9%E4%B8%93%E5%B1%9E%E7%9A%84%E9%A1%B9%E7%9B%AE%E7%A9%BA%E9%97%B4%EF%BC%8C%E5%B8%AE%E5%8A%A9%E4%BC%81%E4%B8%9A%E6%9B%B4%E8%BD%BB%E4%BE%BF%E7%9A%84%E7%AE%A1%E7%90%86%E9%A1%B9%E7%9B%AE%E8%BF%9B%E5%BA%A6&url=https%3A%2F%2Fgithub.com%2freeCB%2Fbalala
[share-whatsapp-shield]: https://img.shields.io/badge/Share%20%20whatsapp-black?style=flat-square&logo=whatsapp
[share-whatsapp-link]: https://api.whatsapp.com/send?text=%E6%8E%A8%E8%8D%90%E4%B8%80%E4%B8%AA%20GitHub%20%E5%BC%80%E6%BA%90%E9%A1%B9%E7%9B%AE%20%F0%9F%A4%AF%20Balala%20-%20%E5%BC%80%E6%BA%90%E7%9A%84%E3%80%81%E5%8F%AF%E6%89%A9%E5%B1%95%E7%9A%84%E9%A1%B9%E7%9B%AE%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E3%80%82%0A%E5%AE%83%E6%94%AF%E6%8C%81%E4%B8%80%E9%94%AE%E5%85%8D%E8%B4%B9%E4%B8%93%E5%B1%9E%E7%9A%84%E9%A1%B9%E7%9B%AE%E7%A9%BA%E9%97%B4%EF%BC%8C%E5%B8%AE%E5%8A%A9%E4%BC%81%E4%B8%9A%E6%9B%B4%E8%BD%BB%E4%BE%BF%E7%9A%84%E7%AE%A1%E7%90%86%E9%A1%B9%E7%9B%AE%E8%BF%9B%E5%BA%A6&url=GitHub%20-%20freeCB/balala
[share-weibo-shield]: https://img.shields.io/badge/Share%20%20weibo-black?style=flat-square&logo=sinaweibo
[share-weibo-link]: https://service.weibo.com/share/share.php?sharesource=weibo&title=%E6%8E%A8%E8%8D%90%E4%B8%80%E4%B8%AA%20GitHub%20%E5%BC%80%E6%BA%90%E9%A1%B9%E7%9B%AE%20%F0%9F%A4%AF%20Balala%20-%20%E5%BC%80%E6%BA%90%E7%9A%84%E3%80%81%E5%8F%AF%E6%89%A9%E5%B1%95%E7%9A%84%E9%A1%B9%E7%9B%AE%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E3%80%82%0A%E5%AE%83%E6%94%AF%E6%8C%81%E4%B8%80%E9%94%AE%E5%85%8D%E8%B4%B9%E4%B8%93%E5%B1%9E%E7%9A%84%E9%A1%B9%E7%9B%AE%E7%A9%BA%E9%97%B4%EF%BC%8C%E5%B8%AE%E5%8A%A9%E4%BC%81%E4%B8%9A%E6%9B%B4%E8%BD%BB%E4%BE%BF%E7%9A%84%E7%AE%A1%E7%90%86%E9%A1%B9%E7%9B%AE%E8%BF%9B%E5%BA%A6.%20%23Balala%20%23%E9%A1%B9%E7%9B%AE%E7%AE%A1%E7%90%86%20%23%E4%BC%81%E4%B8%9A%E7%AE%A1%E7%90%86&url=https://github.com/freeCB/balala

<!--快捷分享 END-->

[issues-link]: https://github.com/freeCB/balala/issues
