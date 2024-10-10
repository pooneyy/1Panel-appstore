# 唐僧叨叨

**唐僧叨叨**是一款`轻量级`，`高性能`，`重安全`专注于`私有化部署`的`开源`即时通讯系统。

![唐僧叨叨](https://file.lifebus.top/imgs/tangsengdaodao_cover.png)

![](https://img.shields.io/badge/%E6%96%B0%E7%96%86%E8%90%8C%E6%A3%AE%E8%BD%AF%E4%BB%B6%E5%BC%80%E5%8F%91%E5%B7%A5%E4%BD%9C%E5%AE%A4-%E6%8F%90%E4%BE%9B%E6%8A%80%E6%9C%AF%E6%94%AF%E6%8C%81-blue)

## 特性

🆓 开源免费：服务端源码，APP源码，Web/PC端源码全部开源，Apache2.0开源协议（可商用），没人能拿捏你

🔏 私有化部署：所有程序和数据都在自己的服务器上，不用担心数据泄露，不用担心数据被用于其他用途

🆚 消息必达：采用 tcp + ack机制，保证消息必达，支持离线消息，支持消息漫游。

🔐 内容安全：消息传输采用私有二进制加密协议、DH+流式加密，防止消息内容泄露

💽 消息永久存储：消息支持永久存储，得益于WuKongIM的自研消息db，永久存储不影响性能，只浪费点磁盘空间

📱 多设备消息同步：支持 1 个移动端、多个 Web/PC 端同时在线时，并且支持多端之间的消息实时同步。

📟 全平台支持：iOS，Android，Windows，MAC，Ubuntu，Web

## 唐僧叨叨 客户端

主要是用户端使用 包括：

+ [iOS](https://github.com/TangSengDaoDao/TangSengDaoDaoiOS)
+ [Android](https://github.com/TangSengDaoDao/TangSengDaoDaoAndroid)
+ [Web](https://github.com/TangSengDaoDao/TangSengDaoDaoWeb)
+ [PC](https://github.com/TangSengDaoDao/TangSengDaoDaoWeb)

## 唐僧叨叨 服务端

给客户端调用的后端系统 包括：

+ 通讯端([WuKongIM](https://github.com/WuKongIM/WuKongIM))
+ 业务端([TangSengDaoDaoServer](https://github.com/TangSengDaoDao/TangSengDaoDaoServer))
+ 管理端([TangSengDaoDaoManager](https://github.com/TangSengDaoDao/TangSengDaoDaoManager))

## 安装说明

安装服务前，需要准备：`MySQL` `Redis` `Minio` 三大基础服务

---

![Ms Studio](https://file.lifebus.top/imgs/ms_blank_001.png)
