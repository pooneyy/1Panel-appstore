# 1Panel 第三方应用仓库 

### 仓库介绍

​	本仓库包含多个适用于 1Panel 的应用，旨在为用户提供简单、快速的安装与更新体验。应用均为开源项目，支持通过 1Panel 的计划任务功能自动化安装和更新。通过仓库提供的脚本，可以轻松地将应用集成到 1Panel 系统中。

### 仓库申明

- 非官方，第三方应用商店
- 部分应用源于[okxlin/appstore](https://github.com/okxlin/appstore),本仓库做了更新适配
- 不对任何原始镜像的有效性做出任何明示或暗示的保证或声明，安全性和风险自查

### 应用列表

以下是当前在本仓库中提供的应用列表及其版本信息：

| 应用名称                                             | 版本     | 应用介绍                                                     |
| ---------------------------------------------------- | -------- | ------------------------------------------------------------ |
| **[Docmost](https://github.com/docmost/docmost)**    | latest   | DocMost 是一个轻量级的文档管理系统，支持多人协作编辑与版本控制，适合用来构建团队知识库或文档管理平台。 |
| **[EasyTier](https://github.com/EasyTier/Easytier)** | v2.2.0   | 一个简单、安全、去中心化的内网穿透 VPN 组网方案，使用 Rust 语言和 Tokio 框架实现。 |
| **[Hexo](https://github.com/hexojs/hexo)**           | latest   | Hexo 是一个快速的静态博客框架，支持Markdown编写，具有丰富的插件和主题，适合搭建个人博客或小型网站。 |
| **[NPC](https://github.com/djylb/nps)**              | v0.26.36 | NPS客户端，轻量级、高性能、功能强大的**内网穿透**代理工具。(djylb二开版本) |
| **[NPS](https://github.com/djylb/nps)**              | v0.26.36 | 一款轻量级、高性能、功能强大的内网穿透代理服务器(djylb二开版本) |
| **[QEXO](https://github.com/Qexo/Qexo)**             | latest   | 一个美观、强大的在线静态博客管理器，支持Hexo、Hugo、Valaxy 等多种平台，并兼容Github、Gitlab 及本地托管 |
| **[SafeLine](https://github.com/chaitin/SafeLine)**  | V7.6.2   | SafeLine 是一款简单好用, 效果突出的 **`Web 应用防火墙(WAF)`**，可以保护 Web 服务不受黑客攻击。 |
| [MD](https://github.com/doocs/md)                    | V1.6.0   | 微信 Markdown 编辑器,Markdown 文档自动即时渲染为微信图文     |

### 使用方法

#### 添加脚本到 1Panel 计划任务

1. 在 1Panel 控制面板中，进入“计划任务”页面。
2. 点击“新增任务”，选择任务类型为“Shell 脚本”。
3. 在脚本框中粘贴以下代码：

```bash
#!/bin/bash

# 清理旧的临时目录
rm -rf /tmp/appstore_merge

# 克隆 appstore-okxlin
git clone --depth=1 https://ghfast.top/https://github.com/okxlin/appstore /tmp/appstore_merge/appstore-okxlin

# 克隆 appstore-arch3rPro
git clone --depth=1 https://ghfast.top/https://github.com/arch3rPro/appstore /tmp/appstore_merge/appstore-arch3rPro

# 复制 appstore-okxlin 数据（先完整复制）
cp -rf /tmp/appstore_merge/appstore-okxlin/apps/* /opt/1panel/resource/apps/local/

# 遍历 appstore-arch3rPro/apps/ 目录，检查哪些目录已存在于 /opt/1panel/resource/apps/local/
for dir in /tmp/appstore_merge/appstore-arch3rPro/apps/*; do
    name=$(basename "$dir")
    if [ -d "/opt/1panel/resource/apps/local/$name" ]; then
        echo "检测到冲突目录: $name，优先保留 appstore-arch3rPro 版本"
        rm -rf "/opt/1panel/resource/apps/local/$name"
    fi
    cp -rf "$dir" /opt/1panel/resource/apps/local/
done

# 清理临时目录
rm -rf /tmp/appstore_merge
echo "应用商店数据已更新"
```

4. 点击执行，等待脚本执行成功
5. 返回应用商店，点击右上角更新应用列表

#### 感谢列表

官方应用商店：[https://github.com/1Panel-dev/appstore](https://github.com/1Panel-dev/appstore)

灵感来源：[https://github.com/okxlin/appstore](https://github.com/okxlin/appstore)

