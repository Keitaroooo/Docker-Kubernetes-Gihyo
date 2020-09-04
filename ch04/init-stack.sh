#!/bin/bash

docker container exec -it manager docker network create --driver=overlay --attachable todoapp
docker container exec -it manager docker stack deploy -c /stack/todo-mysql.yml todo_mysql
docker container exec -it manager docker stack deploy -c /stack/todo-app.yml todo_app
docker container exec -it manager docker stack deploy -c /stack/todo-frontend.yml todo_frontend
docker container exec -it manager docker stack deploy -c /stack/todo-ingress.yml todo_ingress
