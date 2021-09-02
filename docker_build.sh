#!/bin/bash

: "${DOCKER_IMAGE_NAME?}"

printf 'build' "$DOCKER_IMAGE_NAME"
docker build --build-arg JAR_FILE=build/libs/\*.jar  -t $(DOCKER_IMAGE_NAME) .
docker run -d -p 9191:9191 -p 8443:8443 $(DOCKER_IMAGE_NAME)
docker ps -a