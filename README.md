<p align="center">
  <img src="https://raw.githubusercontent.com/arch3rPro/1Panel-Appstore/dev/1Panel-Appstore.png" >
</p>
<h1 align="center">1Panel AppStore </h1>
<br>
<p align="center">
  <img src="https://img.shields.io/badge/Author-Arch3rPro-blueviolet.svg">
  <img src="https://img.shields.io/badge/Release-v1.0-blue.svg" />
  <img src="https://img.shields.io/badge/Platform-Docker-red.svg" />
  <img src="https://img.shields.io/badge/Awesome-List-9cf.svg">
</p>

<p align="center">
  <a href="http://www.seclions.top/">作者博客</a> | 
  <a href="http://www.seclions.top/document">文档教程</a> | 
  <a href="http://nav.seclions.top/">安全导航</a> | 
  <a href="http://nav.seclions.top/wechat.html">微信公众号导航</a> 
</p>

### 📖 仓库介绍

​	本仓库包含多个适用于 1Panel 的应用，旨在为用户提供简单、快速的安装与更新体验。应用均为开源项目，支持通过 1Panel 的计划任务功能自动化安装和更新。通过仓库提供的脚本，可以轻松地将应用集成到 1Panel 系统中。

### ⚠️ 仓库申明

- 非官方，第三方应用商店
- 部分应用源于[okxlin/appstore](https://github.com/okxlin/appstore),本仓库做了更新适配
- 不对任何原始镜像的有效性做出任何明示或暗示的保证或声明，安全性和风险自查

### 📱 应用列表

以下是当前在本仓库中提供的应用列表及其版本信息：

#### 📝 文档与内容管理

| 应用名称 | 版本 | 应用介绍 |
| -------- | ---- | -------- |
| **[Docmost](https://github.com/docmost/docmost)** | v0.20.3 | DocMost 是一个轻量级的文档管理系统，支持多人协作编辑与版本控制，适合用来构建团队知识库或文档管理平台。 |
| **[Hexo](https://github.com/hexojs/hexo)** | latest | Hexo 是一个快速的静态博客框架，支持Markdown编写，具有丰富的插件和主题，适合搭建个人博客或小型网站。 |
| **[QEXO](https://github.com/Qexo/Qexo)** | latest | 一个美观、强大的在线静态博客管理器，支持Hexo、Hugo、Valaxy 等多种平台，并兼容Github、Gitlab 及本地托管 |
| **[MD](https://github.com/doocs/md)** | v2.0.0 | 微信 Markdown 编辑器,Markdown 文档自动即时渲染为微信图文 |
| **[Karakeep](https://github.com/karakeep-app/karakeep)** | v0.24.1 | 原名Hoarder，一个自托管的全能书签管理工具，支持保存链接、笔记和图片，具有AI自动标签功能。 |

#### 🔒 安全与网络工具

| 应用名称 | 版本 | 应用介绍 |
| -------- | ---- | -------- |
| **[EasyTier](https://github.com/EasyTier/Easytier)** | v2.2.4 | 一个简单、安全、去中心化的内网穿透 VPN 组网方案，使用 Rust 语言和 Tokio 框架实现。 |
| **[NPC](https://github.com/djylb/nps)** | v0.26.53 | NPS客户端，轻量级、高性能、功能强大的**内网穿透**代理工具。(djylb二开版本) |
| **[NPS](https://github.com/djylb/nps)** | v0.26.53| 一款轻量级、高性能、功能强大的内网穿透代理服务器(djylb二开版本) |
| **[SafeLine](https://github.com/chaitin/SafeLine)** | V7.6.2 | SafeLine 是一款简单好用, 效果突出的 **`Web 应用防火墙(WAF)`**，可以保护 Web 服务不受黑客攻击。 |

#### 🤖 AI 与智能应用

| 应用名称 | 版本 | 应用介绍 |
| -------- | ---- | -------- |
| **[LobeChat-Data](https://github.com/lobehub/lobe-chat)** | 1.73.0 | LobeChat服务端数据库版 - 开源、现代设计的 ChatGPT/LLMs UI/框架 |
| **[Dify](https://github.com/langgenius/dify)** | 1.1.1 | Dify 是一个开源的 LLM 应用开发平台。支持 AI 工作流、RAG 管道、Agent、模型管理、可观测性等功能 |

#### 🎵 多媒体与监控

| 应用名称 | 版本 | 应用介绍 |
| -------- | ---- | -------- |
| **[XiaoMusic](https://github.com/xiaomusic/xiaomusic)** | 0.3.79 | 使用小爱/红米音箱播放音乐，音乐使用 yt-dlp 下载 |
| **[Nezha](https://github.com/naiba/nezha/)** | v1.12.2 | 哪吒面板v1 - 开源、轻量、易用的服务器监控、运维工具 |

### 🚀 使用方法

#### 📋 添加脚本到 1Panel 计划任务

1. 在 1Panel 控制面板中，进入“计划任务”页面。
2. 点击“新增任务”，选择任务类型为“Shell 脚本”。
3. 在脚本框中粘贴以下代码：

```bash
#!/bin/bash

# 清理旧的临时目录
rm -rf /tmp/appstore_merge

# 克隆 appstore-arch3rPro
git clone --depth=1 https://ghfast.top/https://github.com/arch3rPro/appstore /tmp/appstore_merge/appstore-arch3rPro

# 复制 数据（先完整复制）
cp -rf /tmp/appstore_merge/appstore-arch3rPro/apps/* /opt/1panel/resource/apps/local/

# 清理临时目录
rm -rf /tmp/appstore_merge
echo "应用商店数据已更新"
```

4. 点击执行，等待脚本执行成功
5. 返回应用商店，点击右上角更新应用列表

#### 🙏 感谢列表

官方应用商店：[https://github.com/1Panel-dev/appstore](https://github.com/1Panel-dev/appstore)

第三方应用商店：[https://github.com/okxlin/appstore](https://github.com/okxlin/appstore)

第三方应用商店：[https://github.com/QYG2297248353/appstore-1panel](https://github.com/QYG2297248353/appstore-1panel)

