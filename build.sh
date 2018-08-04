#!/bin/bash

set -e
set -u
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
pushd node_exporter
make push VERSION=0.16.0
make push VERSION=0.15.2
make push VERSION=0.14.0
popd
