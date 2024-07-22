# Kibana

Kibana 是一个用户界面，可让您可视化 Elasticsearch 数据并导航 Elastic Stack。通过本教程了解可视化数据的基础知识。

![Kibana](https://file.lifebus.top/imgs/kibana_cover.png)

Kibana 适合管理员、分析师和业务用户。作为管理员，您的角色是管理 Elastic Stack，从创建部署到将 Elasticsearch 数据导入
Kibana，然后管理数据。
作为分析师，您希望发现数据中的见解、在仪表板上可视化您的数据并分享您的发现。作为业务用户，您希望查看现有仪表板并深入了解详细信息。

Kibana 适用于所有类型的数据。您的数据可以是结构化或非结构化文本、数字数据、时间序列数据、地理空间数据、日志、指标、安全事件等。无论您的数据是什么，Kibana
都可以帮助您发现模式和关系并可视化结果。

## 特性

+ 搜索、观察和保护您的数据

从发现文档到分析日志再到查找安全漏洞，Kibana 是您访问这些功能及其他功能的门户。

+ 分析您的数据

搜索隐藏的见解，可视化您在图表、仪表、地图、图形等中发现的内容，并将它们组合在仪表板中。

+ 管理、监控和保护 Elastic Stack

管理您的数据、监控 Elastic Stack 集群的运行状况并控制哪些用户可以访问哪些功能。

## 安装说明

> 登录账户信息，请从 `Elasticsearch` 日志中获取账户信息
>
> 注册令牌，请从 `Elasticsearch` 日志中获取注册令牌信息
>
> 首次登录地址，请查看日志获取登录地址信息
>
> http://127.0.0.1:5601?code=xxxxxx

### 登录方式

+ `用户名 + 密码`

通过 `elastic` 或 `kibana_system` 用户 + `密码` 登录

+ `Elasticsearch 服务 账户令牌`

通过 `Elasticsearch` 服务账户令牌登录，需要在 `Elasticsearch` 服务中获取
