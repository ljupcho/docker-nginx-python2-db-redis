#!/bin/bash

# star the containers int the right order

docker start docker-nginx-python2-db-redis_db_1
docker start docker-nginx-python2-db-redis_redis_1
docker start docker-nginx-python2-db-redis_todo_1
docker start docker-nginx-python2-db-redis_nginx_todo_1
docker start docker-nginx-python2-db-redis_consumers_1