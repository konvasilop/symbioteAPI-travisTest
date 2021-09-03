#!/bin/bash -e

: "${DOCKER_IMAGE_NAME?}" "${DOCKER_USERNAME?}" "${DOCKER_PASSWORD?}"

printf "$DOCKER_IMAGE_NAME"
printf "$DOCKER_USERNAME"

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker tag $DOCKER_IMAGE_NAME shapes2020/$DOCKER_IMAGE_NAME:latest
docker push shapes2020/"$DOCKER_IMAGE_NAME":latest