PROXY=http://172.17.0.1:8185
IMAGE=prometheus
VERSION=2.3.1
BUILD_ARGS=

ifdef http_proxy
	_BUILD_ARGS+=--build-arg=http_proxy:${http_proxy}
endif
ifdef https_proxy
	_BUILD_ARGS+=--build-arg=https_proxy:${https_proxy}
endif

.PHONY:build
build:

	docker build ${BUILD_ARGS} ${_BUILD_ARGS} -t $(IMAGE):$(VERSION) .
