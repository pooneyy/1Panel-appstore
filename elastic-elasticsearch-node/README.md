# Elasticsearch

搜索并分析您的数据

<img src="https://file.lifebus.top/imgs/elasticsearch_logo.svg" width="100%"/>

Elasticsearch 是 Elastic Stack 核心的分布式搜索和分析引擎。 Logstash 和 Beats 有助于收集、聚合和丰富您的数据并将其存储在
Elasticsearch 中。
Kibana 使您能够以交互方式探索、可视化和分享对数据的见解，并管理和监控堆栈。 Elasticsearch 是索引、搜索和分析魔法发生的地方。

## 安装说明

当前应用为主节点，仅首次部署有效。集群节点请使用 `Elasticsearch 节点` 应用。

### 宿主机配置

+ `vm.max_map_count` 配置

Elasticsearch 需要设置 `vm.max_map_count` 为至少 `262144`。可以通过以下命令设置：

```sh
grep vm.max_map_count /etc/sysctl.conf

# 如果输出为空，表示没有设置，需要手动添加
vm.max_map_count=262144
```

添加配置

```sh
# 临时生效
sysctl -w vm.max_map_count=262144

# 永久生效
echo "vm.max_map_count=262144" >>/etc/sysctl.conf
sysctl -p
```

### 单节点安装

+ `集群名称` 配置

用于标识集群的名称。默认为 `elasticsearch-cluster`。

+ `节点名称` 配置

用于标识节点的名称。默认为 `elasticsearch-node`。

+ `Elasticsearch 密码 (elastic)` 配置

内置用户 `elastic` 的密码。默认情况下，密码是随机生成的。

+ `Kibana 密码 (kibana_system)` 配置

内置用户 `kibana_system` 的密码。默认情况下，密码是随机生成的。

用于保护内置用户 `kibana_system` 的密码。默认情况下，密码是随机生成的。

+ `注册令牌 (节点)` 配置

忽略即可

### 集群节点安装

+ `集群名称` 配置

与加入的集群名称一致。

+ `节点名称` 配置

集群中唯一的节点名称。请勿重复

+ `Elasticsearch 密码 (elastic)` 配置

忽略即可

+ `Kibana 密码 (kibana_system)` 配置

忽略即可

+ `注册令牌 (节点)` 配置

用于加入集群的注册令牌。在集群中的节点中生成，用于加入集群验证。每个注册令牌有效时长30分钟。

## 快捷操作

> 重置密码

```sh
cd /usr/share/elasticsearch/bin
./elasticsearch-reset-password -u elastic
```

> 创建 `kibana` 注册令牌

```sh
cd /usr/share/elasticsearch/bin
./elasticsearch-create-enrollment-token -s kibana
```

> 导出证书

<容器名称> 为容器名称或容器 ID，可以通过 `docker ps` 命令查看。

导出 `http_ca.crt` 证书到当前目录

```sh
docker cp <容器名称>:/usr/share/elasticsearch/config/certs/http_ca.crt .
```
