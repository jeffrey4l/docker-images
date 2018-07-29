IMAGE=node-exporter
VERSION=0.16.0
BUILD_ARGS=

ifdef http_proxy
	_BUILD_ARGS+=--build-arg http_proxy=${http_proxy}
endif
ifdef https_proxy
	_BUILD_ARGS+=--build-arg https_proxy=${https_proxy}
endif

.PHONY:build
build:

	docker build \
		--build-arg NODE_EXPORTER_VERSION=${VERSION} \
		${BUILD_ARGS} ${_BUILD_ARGS} -t $(IMAGE):$(VERSION) .
