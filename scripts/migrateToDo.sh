#!/bin/bash

docker-compose exec todo python manage.py makemigrations
docker-compose exec todo python manage.py migrate

