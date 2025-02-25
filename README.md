# 1Panel 应用仓库 README

## 仓库介绍

本仓库包含多个适用于 1Panel 的应用，旨在为用户提供简单、快速的安装与更新体验。应用均为开源项目，支持通过 1Panel 的计划任务功能自动化安装和更新。通过仓库提供的脚本，可以轻松地将应用集成到 1Panel 系统中。

## 应用列表

以下是当前在本仓库中提供的应用列表及其版本信息：

| 名称         | 版本     | 应用介绍                                                     |
| ------------ | -------- | ------------------------------------------------------------ |
| **DocMost**  | latest   | DocMost 是一个轻量级的文档管理系统，支持多人协作编辑与版本控制，适合用来构建团队知识库或文档管理平台。 |
| **EasyTier** | v2.2.0   | EasyTier 是一款简单高效的负载均衡工具，支持多种负载均衡算法和实时健康检查，帮助优化流量分发和提高系统稳定性。 |
| **Hexo**     | latest   | Hexo 是一个快速的静态博客框架，支持Markdown编写，具有丰富的插件和主题，适合搭建个人博客或小型网站。 |
| **NPC**      | v0.26.36 | NPC 是一个网络代理客户端工具，提供跨平台的网络代理支持，适用于科学上网与安全访问。 |
| **NPS**      | v0.26.36 | NPS（Network Proxy Service）是一个高性能的远程访问代理工具，支持内网穿透，广泛应用于远程桌面、VPN 及其他穿透需求场景。 |
| **QEXO**     | latest   | QEXO 是一个轻量级的企业级聊天平台，具有高效的群聊与私聊功能，支持自定义插件和多种消息通知。 |
| **SafeLine** | V7.6.2   | SafeLine 是一款安全防护工具，主要提供对敏感数据的加密保护及访问日志审计功能，适用于高安全性需求的环境。 |

## 使用方法

### 添加脚本到 1Panel 计划任务

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
