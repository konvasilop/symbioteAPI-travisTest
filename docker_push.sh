#!/bin/bash

: "${DOCKER_PASSWORD?}" "${DOCKER_USERNAME?}" "${DOCKER_IMAGE_NAME?}"

echo "$(DOCKER_PASSWORD)" | docker login -u "$(DOCKER_USERNAME)" --password-stdin
docker tag $(DOCKER_IMAGE_NAME) symbiote-h2020/$(DOCKER_IMAGE_NAME):latest
docker push symbiote-h2020/$(DOCKER_IMAGE_NAME):latest