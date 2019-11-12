#!/bin/bash

# Build docker image
#docker-compose up -d --build
# Run all the services except the consumers, which will be run after all the apps are prepaired
docker-compose up -d --scale consumers=0

######################################################################################
# Prepare To-Do Django container
######################################################################################
docker-compose exec todo git checkout master
"scripts/migrateToDo.sh"

# after all set and done run the consumers
docker-compose up -d consumers
# start the cron jobs and set the commands under todo app
docker-compose exec todo service cron start
docker-compose exec todo crontab ../../../etc/crontab
