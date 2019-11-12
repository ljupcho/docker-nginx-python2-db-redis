#!/bin/bash

# star the containers int the right order

docker start cms-infra_db_1
docker start cms-infra_redis_1
docker start cms-infra_cms_1
docker start cms-infra_nginx_cms_1
docker start cms-infra_consumers_1