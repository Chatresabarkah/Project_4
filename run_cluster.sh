#!/bin/bash

# create new network
docker network create hadoop_network

# build docker image with image name hadoop-base:3.3.1
docker build -t hadoop-base:3.3.1 -f Dockerfile-hadoop .
# running image to container, -d to run it in daemon mode
docker-compose -f docker-compose-hadoop.yml up -d