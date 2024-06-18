<div align="center"><a name="readme-top"></a>

[![](https://github.com/CZDESIGN2023/balala-api/blob/main/balala%E7%9A%84banner.jpg)](https://github.com/CZDESIGN2023/balala-api)
# <img src="https://github.com/Bluesky94z/-12/blob/master/balala%20%E7%9A%84logo.jpg" width="22px">  Blala

让项目变得更加轻便<br/>
打造专业高效的**管理平台**（[Link](https://github.com/CZDESIGN2023/balala-api)）<br/>

[English](https://github.com/freeCB/balala/blob/main/README.md) · **简体中文** · [更新日志](https://github.com/freeCB/balala/releases) · [文档](https://github.com/freeCB/balala/releases) ·  [Bug反馈](https://github.com/freeCB/balala/issues) · [讨论专区](https://github.com/freeCB/balala/discussions)
<!-- SHIELD GROUP -->

[![][GitHub Release]][GitHub Release link]
[![][web vercel]][web vercel link]
[![][GitHub Discussions]][GitHub Discussions link]
[![][GitHub issues]][GitHub issues link]
[![][GitHub star]][GitHub star link]


**分享 Balala 给你的好友**


[![][share-tel-shield]][share-tel-link]
[![][share-x-shield]][share-x-link]
[![][share-whatsapp-shield]][share-whatsapp-link]
[![][share-weibo-shield]][share-weibo-link]
<br/>
<br/>

</details>
<div align="left">

## 👋🏻 开始使用
>我们是一群充满热情的设计工程师<br/>
>希望为企业管理提供现代化的设计组件和工具，并以开源的方式分享。<br/>
>我们希望能够为开发者和用户提供一个更加开放、更加透明友好的产品生态。<br/>

不论普通用户与专业开发者，Balala 旨在寻找更便捷的项目管理办法。
Balala目前正在积极开发中，<br/>
有任何需求或者问题，欢迎提交 [issues][issues-link]
<br/>
<br/>

### 📘Docker快速开始：

```
git clone https://github.com/freeCB/balala.git
```

```
cd balala
```

### 🤖启动
```
docker compose up -d
```

### 🌐访问
打开游览器访问：http://localhost:8080/

⚡️超级管理员
>用户名：**super**<br/>
>初始密码：**Passw@rd**
<br/>
### ✨目录结构
```
+ balala
  + .env                // 启动配置文件
  + compose.yaml        // docker-compose配置文件
  + README.md           // 项目说明
```

### 📘停止
```
docker compose stop
```

### 📦重启
```
docker compose restart
```


### 🧩启动配置修改
配置文件：.env
```
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

### 🧩确认当前版本
a：登录页面右下角，查看当前版本


### 🗣️项目自定义
连接到mysql
- [x] 1. LOGO
```sql
update config set value = "https://example.com/logo.png" where config_key = "balala.logo";
```
> ✨value 的值是图片的url，也可以是base64

- [x] 2. 网页标题
```sql
update config set value = "new title" where config_key = "balala.title";
```

- [x] 3. 修改项目地址
```sql
update config set value = "https://example.com" where config_key = "notify.redirect.domain";
```

</details>
<div align="left">
 <br />

## 👋🏻 交流--合作
⭐️如果你有更多的奇思妙想，也许你认可这个产品并想持续关注，又或者纯粹吃瓜<br/>
🤝那么加入我们吧<br/>
> 联系邮箱：2023czdesign@gmail.com<br/>
> Discord：待更新<br/>
> QQ：待更新<br/>
> 微信：待更新<br/>
<br/>



</details>

Copyright (c) 2024, CZ·DESGIN. <br />

<!-- LINK GROUP -->

[logo]: https://github.com/freeCB/balala/blob/master/balala%20%E7%9A%84logo.jpg=width="15px"
[GitHub Release]: https://img.shields.io/github/v/release/freeCB/balala?style=flat-square&labelColor=%23000000&color=%2375FA61
[GitHub Release link]: https://github.com/freeCB/balala/releases
[web vercel]: https://img.shields.io/badge/build-online-brightgreen?style=flat-square&logo=vercel&label=Balala&labelColor=%23000000&color=%2373FBFD
[web vercel link]: https://github.com/freeCB
[GitHub Discussions]: https://img.shields.io/github/discussions/freeCB/balala?style=flat-square&labelColor=%23000000&color=%23EA3FF7
[GitHub Discussions link]: https://github.com/freeCB/balala/discussions
[GitHub issues]: https://img.shields.io/github/issues/freeCB/balala?style=flat-square&labelColor=%23000000&color=%23FFF840
[GitHub issues link]: https://github.com/freeCB/balala/issues
[GitHub star]: https://img.shields.io/github/stars/freeCB?style=flat-square&logo=%20&labelColor=%23000000&color=%23FF8787
[GitHub star link]: https://github.com/freeCB/balala/stargazers
[share-tel-shield]: https://img.shields.io/badge/Share%20%20Tel-black?style=flat-square&logo=telegram
[share-tel-link]: https://t.me/share/url%22?text=https://t.me/share/url%22?text=%E6%8E%A8%E8%8D%90%E4%B8%80%E4%B8%AA%20GitHub%20%E5%BC%80%E6%BA%90%E9%A1%B9%E7%9B%AE%20%F0%9F%A4%AF%20Balala%20-%20%E5%BC%80%E6%BA%90%E7%9A%84%E3%80%81%E5%8F%AF%E6%89%A9%E5%B1%95%E7%9A%84%E9%A1%B9%E7%9B%AE%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E3%80%82%0A%E5%AE%83%E6%94%AF%E6%8C%81%E4%B8%80%E9%94%AE%E5%85%8D%E8%B4%B9%E4%B8%93%E5%B1%9E%E7%9A%84%E9%A1%B9%E7%9B%AE%E7%A9%BA%E9%97%B4%EF%BC%8C%E5%B8%AE%E5%8A%A9%E4%BC%81%E4%B8%9A%E6%9B%B4%E8%BD%BB%E4%BE%BF%E7%9A%84%E7%AE%A1%E7%90%86%E9%A1%B9%E7%9B%AE%E8%BF%9B%E5%BA%A6&url=https://github.com/freeCB/balala
[share-x-shield]: https://img.shields.io/badge/Share%20%20X-black?style=flat-square&logo=X
[share-x-link]: https://x.com/intent/post?hashtags=chatbot%2CchatGPT%2CopenAI&text=%E6%8E%A8%E8%8D%90%E4%B8%80%E4%B8%AA+GitHub+%E5%BC%80%E6%BA%90%E9%A1%B9%E7%9B%AE+%F0%9F%A4%AF+Balala+-+%E5%BC%80%E6%BA%90%E7%9A%84%E3%80%81%E5%8F%AF%E6%89%A9%E5%B1%95%E7%9A%84%E9%A1%B9%E7%9B%AE%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E3%80%82%0A%E5%AE%83%E6%94%AF%E6%8C%81%E4%B8%80%E9%94%AE%E5%85%8D%E8%B4%B9%E4%B8%93%E5%B1%9E%E7%9A%84%E9%A1%B9%E7%9B%AE%E7%A9%BA%E9%97%B4%EF%BC%8C%E5%B8%AE%E5%8A%A9%E4%BC%81%E4%B8%9A%E6%9B%B4%E8%BD%BB%E4%BE%BF%E7%9A%84%E7%AE%A1%E7%90%86%E9%A1%B9%E7%9B%AE%E8%BF%9B%E5%BA%A6&url=https%3A%2F%2Fgithub.com%2freeCB%2Fbalala
[share-whatsapp-shield]: https://img.shields.io/badge/Share%20%20whatsapp-black?style=flat-square&logo=whatsapp
[share-whatsapp-link]: https://api.whatsapp.com/send?text=%E6%8E%A8%E8%8D%90%E4%B8%80%E4%B8%AA%20GitHub%20%E5%BC%80%E6%BA%90%E9%A1%B9%E7%9B%AE%20%F0%9F%A4%AF%20Balala%20-%20%E5%BC%80%E6%BA%90%E7%9A%84%E3%80%81%E5%8F%AF%E6%89%A9%E5%B1%95%E7%9A%84%E9%A1%B9%E7%9B%AE%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E3%80%82%0A%E5%AE%83%E6%94%AF%E6%8C%81%E4%B8%80%E9%94%AE%E5%85%8D%E8%B4%B9%E4%B8%93%E5%B1%9E%E7%9A%84%E9%A1%B9%E7%9B%AE%E7%A9%BA%E9%97%B4%EF%BC%8C%E5%B8%AE%E5%8A%A9%E4%BC%81%E4%B8%9A%E6%9B%B4%E8%BD%BB%E4%BE%BF%E7%9A%84%E7%AE%A1%E7%90%86%E9%A1%B9%E7%9B%AE%E8%BF%9B%E5%BA%A6&url=GitHub%20-%20freeCB/balala
[share-weibo-shield]: https://img.shields.io/badge/Share%20%20weibo-black?style=flat-square&logo=sinaweibo
[share-weibo-link]: https://service.weibo.com/share/share.php?sharesource=weibo&title=%E6%8E%A8%E8%8D%90%E4%B8%80%E4%B8%AA%20GitHub%20%E5%BC%80%E6%BA%90%E9%A1%B9%E7%9B%AE%20%F0%9F%A4%AF%20Balala%20-%20%E5%BC%80%E6%BA%90%E7%9A%84%E3%80%81%E5%8F%AF%E6%89%A9%E5%B1%95%E7%9A%84%E9%A1%B9%E7%9B%AE%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F%E3%80%82%0A%E5%AE%83%E6%94%AF%E6%8C%81%E4%B8%80%E9%94%AE%E5%85%8D%E8%B4%B9%E4%B8%93%E5%B1%9E%E7%9A%84%E9%A1%B9%E7%9B%AE%E7%A9%BA%E9%97%B4%EF%BC%8C%E5%B8%AE%E5%8A%A9%E4%BC%81%E4%B8%9A%E6%9B%B4%E8%BD%BB%E4%BE%BF%E7%9A%84%E7%AE%A1%E7%90%86%E9%A1%B9%E7%9B%AE%E8%BF%9B%E5%BA%A6.%20%23Balala%20%23%E9%A1%B9%E7%9B%AE%E7%AE%A1%E7%90%86%20%23%E4%BC%81%E4%B8%9A%E7%AE%A1%E7%90%86&url=https://github.com/freeCB/balala
[issues-link]: https://github.com/freeCB/balala/issues

