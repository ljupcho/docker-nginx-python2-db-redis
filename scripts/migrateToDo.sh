#!/bin/bash

docker-compose exec todo python manage.py makemigrate
docker-compose exec todo python manage.py migrate

