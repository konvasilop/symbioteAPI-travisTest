#!/bin/bash -e

: "${DOCKER_IMAGE_NAME?}" "${DOCKER_USERNAME?}" "${DOCKER_PASSWORD?}"

printf "$DOCKER_IMAGE_NAME"
printf "$DOCKER_USERNAME"

printf 'About to push ' "$DOCKER_IMAGE_NAME" ' with ' "$DOCKER_USERNAME"
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker tag $DOCKER_IMAGE_NAME symbiote-h2020/$DOCKER_IMAGE_NAME:latest
printf "push symbiote-h2020/"$DOCKER_IMAGE_NAME":latest"
docker push symbiote-h2020/"$DOCKER_IMAGE_NAME":latest