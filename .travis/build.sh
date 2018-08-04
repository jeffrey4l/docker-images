#!/bin/bash

set -e
set -u
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
pushd $APP
MAKE_OPTS="IMAGE=${DOCKER_USERNAME}/${APP}"
if [[ -n ${VERSION+x} ]]; then
    MAKE_OPTS="${MAKE_OPTS} VERSION=${VERSION}"
fi
if [[ -n ${LATEST+x} ]]; then
    MAKE_OPTS="${MAKE_OPTS} LATEST=1"
fi
make push ${MAKE_OPTS}
popd
