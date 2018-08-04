#!/bin/bash

set -e
set -u
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
pushd $APP
make push
popd
