# Certimate

SSL证书管理工具

![Certimate](https://file.lifebus.top/imgs/certimate_cover.png)

开源的SSL证书管理工具，可以帮助你自动申请、部署SSL证书，并在证书即将过期时自动续期。

An open-source SSL certificate management tool that helps you automatically apply for and deploy SSL certificates, as
well as automatically renew them when they are about to expire.

![](https://img.shields.io/badge/%E6%96%B0%E7%96%86%E8%90%8C%E6%A3%AE%E8%BD%AF%E4%BB%B6%E5%BC%80%E5%8F%91%E5%B7%A5%E4%BD%9C%E5%AE%A4-%E6%8F%90%E4%BE%9B%E6%8A%80%E6%9C%AF%E6%94%AF%E6%8C%81-blue)

## 简介

做个人产品或在小企业负责运维的同学，需要管理多个域名，要给域名申请证书。但手动申请证书有以下缺点：

😱麻烦：申请、部署证书虽不困难，但也挺麻烦的，尤其是维护多个域名的时候。

😭易忘：当前免费证书有效期仅90天，这就要求定期操作，增加工作量的同时，也很容易忘掉，导致网站无法访问。

Certimate 就是为了解决上述问题而产生的，它具有以下特点：

+ 操作简单：自动申请、部署、续期 SSL 证书，全程无需人工干预。
+ 支持私有部署：部署方法简单，只需下载二进制文件执行即可。二进制文件、docker 镜像全部用 github actions 生成，过程透明，可自行审计。
+ 数据安全：由于是私有部署，所有数据均存储在本地，不会保存在服务商的服务器，确保数据的安全性。

## 概念

Certimate 的工作流程如下：

+ 用户通过 Certimate 管理页面填写申请证书的信息，包括域名、dns 服务商的授权信息、以及要部署到的服务商的授权信息。
+ Certimate 向证书场商的 API 发起申请请求，获取 SSL 证书。
+ Certimate 存储证书信息，包括证书内容、私钥、证书有效期等，并在证书即将过期时自动续期。
+ Certimate 向服务商的 API 发起部署请求，将证书部署到服务商的服务器上。

这就涉及域名、dns 服务商的授权信息、部署服务商的授权信息等。

## 支持的服务商列表

| 服务商        | 是否域名服务商 | 是否部署服务 | 备注                                       |
|------------|---------|--------|------------------------------------------|
| 阿里云        | 是       | 是      | 支持阿里云注册的域名，支持部署到阿里云 CDN,OSS              |
| 腾讯云        | 是       | 是      | 支持腾讯云注册的域名，支持部署到腾讯云 CDN                  |
| 七牛云        | 否       | 是      | 七牛云没有注册域名服务，支持部署到七牛云 CDN                 |
| CloudFlare | 是       | 否      | 支持 CloudFlare 注册的域名，CloudFlare 服务自带SSL证书 |
| SSH        | 否       | 是      | 支持部署到 SSH 服务器                            |
| WEBHOOK    | 否       | 是      | 支持回调到 WEBHOOK                            |

## 安装说明

> 用户名 `admin@certimate.fun`
>
> 密码：`1234567890`

---

![Ms Studio](https://file.lifebus.top/imgs/ms_blank_001.png)
