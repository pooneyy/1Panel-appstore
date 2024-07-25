# Docker Mailserver

docker-mailserver，简称 DMS，是一个可用于生产的全栈但简单的邮件服务器（SMTP、IMAP、LDAP、反垃圾邮件、反病毒等）。它只使用配置文件，不使用
SQL 数据库。其形象以 "保持简单和版本化 "为口号。

## 前置准备

- `域名`
- `DNS 解析`
- `服务器`
    - `Docker` 服务
    - `推荐配置`: 1核2G内存 容器已启用交换功能
    - `最小配置`: 1核512M内存 (禁用 ClamAV 服务)
