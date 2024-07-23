# Elasticsearch

搜索并分析您的数据

<img src="https://file.lifebus.top/imgs/elasticsearch_logo.svg" width="100%"/>

Elasticsearch 是 Elastic Stack 核心的分布式搜索和分析引擎。 Logstash 和 Beats 有助于收集、聚合和丰富您的数据并将其存储在
Elasticsearch 中。
Kibana 使您能够以交互方式探索、可视化和分享对数据的见解，并管理和监控堆栈。 Elasticsearch 是索引、搜索和分析魔法发生的地方。

## 安装说明

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

### 新增节点安装

> `集群名称` 配置

用于标识集群的名称。默认为 `elasticsearch-cluster`。

> `节点名称` 配置

用于标识节点的名称。默认为 `elasticsearch-node`。

> `注册令牌 (节点)` 配置

用于加入集群的注册令牌。在集群中的节点中生成，用于加入集群验证。每个注册令牌有效时长30分钟。

> `集群发现地址` 配置

用于发现集群中其他节点的地址。

> `Java 启动参数 (可选)` 配置

Java 启动参数。默认为空。

推荐参数：`-Xms1g -Xmx1g`

小内存推荐参数：`-Xms512m -Xmx512m`

> 角色配置

可以通过环境变量配置节点角色。

```sh
ES_SETTING_NODE_ROLES=[master, data, ingest]
```

可选角色

+ `master`
+ `data`
+ `data_content`
+ `data_hot`
+ `data_warm`
+ `data_cold`
+ `data_frozen`
+ `ingest`
+ `ml`
+ `remote_cluster_client`
+ `transform`

## 快捷操作 (注册成功)

> 重置密码

```sh
/usr/share/elasticsearch/bin/elasticsearch-reset-password -u elastic
```

> 创建 `节点` 注册令牌

注册令牌的有效期为30分钟。

```sh
/usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s node
```

> 创建 `kibana` 注册令牌

注册令牌的有效期为30分钟。

```sh
/usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s kibana
```

> 导出证书

<容器名称> 为容器名称或容器 ID，可以通过 `docker ps` 命令查看。

导出 `http_ca.crt` 证书到当前目录

```sh
docker cp <容器名称>:/usr/share/elasticsearch/config/certs/http_ca.crt .
```
