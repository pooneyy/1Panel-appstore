# 思源笔记

![思源笔记](https://file.lifebus.top/imgs/siyuan_b3log_cover.png)

![Static Badge](https://img.shields.io/badge/%E6%96%B0%E7%96%86%E8%90%8C%E6%A3%AE%E8%BD%AF%E4%BB%B6%E5%BC%80%E5%8F%91%E5%B7%A5%E4%BD%9C%E5%AE%A4-%E6%8F%90%E4%BE%9B%E6%8A%80%E6%9C%AF%E6%94%AF%E6%8C%81-blue)

## 简介

重构你的思维

**所见所得 双链块引**

**加密同步 隐私优先**

思源笔记是一款隐私优先的个人知识管理系统，支持完全离线使用，同时也支持端到端加密同步。

融合块、大纲和双向链接，重构你的思维。

## 反向代理

Nginx 配置 WebSocket 反向代理：

```shell
location /ws {
    proxy_pass http://localhost:6806;
    proxy_read_timeout 60s;
    proxy_http_version 1.1;
    proxy_set_header Upgrade $http_upgrade;
    proxy_set_header Connection 'Upgrade';
}
```

## 常见问题

### 数据存储

数据保存在工作空间文件夹下，在工作空间 data 文件夹下：

| 文件夹       | 说明                |
|-----------|-------------------|
| assets    | 保存所有插入的资源文件       |
| emojis    | 用于保存自定义图标表情图片     |
| snippets  | 用于保存代码片段          |
| storage   | 用于保存查询条件、布局和闪卡数据等 |
| templates | 用于保存模板片段          |
| widgets   | 用于保存挂件            |
| plugins   | 用于保存插件            |
| public    | 用于保存公开的数据         |

> 其余文件夹就是用户自己创建的笔记本文件夹，笔记本文件夹下 .sy 后缀的文件用于保存文档数据，数据格式为 JSON

---

![Ms Studio](https://file.lifebus.top/imgs/ms_blank_001.png)
