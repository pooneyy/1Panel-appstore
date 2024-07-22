# Elasticsearch

搜索并分析您的数据

![Elasticsearch](https://file.lifebus.top/imgs/elasticsearch_logo.svg)

Elasticsearch 是 Elastic Stack 核心的分布式搜索和分析引擎。 Logstash 和 Beats 有助于收集、聚合和丰富您的数据并将其存储在
Elasticsearch 中。
Kibana 使您能够以交互方式探索、可视化和分享对数据的见解，并管理和监控堆栈。 Elasticsearch 是索引、搜索和分析魔法发生的地方。

## 安装说明

### 单节点安装

+ `节点名称` 配置

用于标识集群中的节点。默认情况下，节点名称是随机生成的 UUID。

+ `Elasticsearch 密码 (elastic)` 配置

单节点启动必填

用于保护内置用户 `elastic` 的密码。默认情况下，密码是随机生成的。

+ `Kibana 密码 (kibana_system)` 配置

单节点启动必填

用于保护内置用户 `kibana_system` 的密码。默认情况下，密码是随机生成的。

+ `注册令牌 (节点)` 配置

单节点启动可忽略， 如果是作为 `集群` 中的节点启动，此项 `必须` 填写，可忽略密码配置。
