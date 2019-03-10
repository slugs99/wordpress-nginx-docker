#!/bin/bash

docker-compose down;
docker rmi $(docker images -q);
docker-compose up -d

docker exec -it $(docker ps -aqf "name=nginx") bash -c 'service nginx start'
