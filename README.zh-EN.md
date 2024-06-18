<div align="center"><a name="readme-top"></a>

[![](https://github.com/freeCB/balala/blob/main/balala%E7%9A%84banner.jpg)](https://github.com/freeCB/balala)
# <img src="https://github.com/freeCB/balala/blob/main/balala%20%E7%9A%84logo.jpg" width="22px">  Blala

Making projects lighter<br/>
Create a professional & efficient **Management Platform**（[Link](https://github.com/CZDESIGN2023/balala-api)）<br/>

 **English** ·[Chinese](https://github.com/freeCB/balala/blob/main/README.zh-CN.md)· [Update](https://github.com/freeCB/balala/releases) · [Document](https://github.com/freeCB/balala/releases) ·  [Bug Report](https://github.com/freeCB/balala/issues) · [Discussion](https://github.com/freeCB/balala/discussions)
<!-- SHIELD GROUP -->

[![][GitHub Release]][GitHub Release link]
[![][web vercel]][web vercel link]
[![][GitHub Discussions]][GitHub Discussions link]
[![][GitHub issues]][GitHub issues link]
[![][GitHub star]][GitHub star link]


**Shrea Balala For your friends**


[![][share-tel-shield]][share-tel-link]
[![][share-x-shield]][share-x-link]
[![][share-whatsapp-shield]][share-whatsapp-link]
[![][share-weibo-shield]][share-weibo-link]
<br/>
<br/>

</details>
<div align="left">

## 👋🏻 Start
>We are a group of passionate design engineers<br/>
>We want to provide modern design components and tools for enterprise management and share them as open source。<br/>
>We hope to provide developers and users with a more open, transparent and friendly product ecosystem。<br/>

For both casual users and professional developers<br/>
Balala aims to find easier ways to manage projects<br/>
Balala Currently under active development<br/>
Feel free to submit any requests or questions you may have! [issues][issues-link]<br/>
<br/>
<br/>

### （1）📘Docker Quickly：

```
git clone https://github.com/freeCB/balala.git
```

```
cd balala
```

### （2）🤖Launch
```
docker compose up -d
```

### （3）🌐Interview
Open Internet：http://localhost:8080/

⚡️Super-Admin
>User：**super**<br/>
>First password.：**Passw@rd**
<br/>

### （4）✨List
```
+ balala
  + .env                // Startup Configuration File
  + compose.yaml        // Docker-compose configuration file
  + README.md           // Description
```

### （5）📘Stop
```
docker compose stop
```

### （6）📦Restart
```
docker compose restart
```


### （7）🧩Startup Configuration Changes
Configuration File：.env
```
# Project
COMPOSE_PROJECT_NAME="balala"
# mysql root 
MYSQL_ROOT_PASSWORD="123456"
# mysql 
MYSQL_PORT=3306
# web 
WEB_PORT=8080
# Version
VERSION=v1.3.3
```

### （8）🧩Confirm the version
#### After installing, or updating, check the bottom right corner of the login page to see if the current system version is the same as the latest version on git.。[⭐View version](https://github.com/freeCB/balala/releases)<br/>

Refer to follows👇：<br/>
# <img src="https://github.com/freeCB/balala/blob/main/.github/cankaojietu.jpg" width="888px">



### （9）🗣️Project Customizations
link to mysql
- [x] 1. LOGO
```sql
update config set value = "https://example.com/logo.png" where config_key = "balala.logo";
```
> ✨The value is the url of the image, which can also be base64.

- [x] 2. Web title
```sql
update config set value = "new title" where config_key = "balala.title";
```

- [x] 3. Modify the project address
```sql
update config set value = "https://example.com" where config_key = "notify.redirect.domain";
```

</details>
<div align="left">
 <br />

## 👋🏻 Communication & Cooperation
⭐️If you have more whimsical ideas, maybe you recognize this product and want to stay tuned!<br/>
🤝Join us.<br/>
> Email：2023czdesign@gmail.com<br/>
> Discord：updated<br/>
> QQ：updated<br/>
> Wechat：updated<br/>
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
