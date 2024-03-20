#!bin/bash
docker rmi -f $(docker images -q)
docker rm $(docker ps -aq)