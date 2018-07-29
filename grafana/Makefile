IMAGE=grafana
VERSION=5.2.1

ifdef http_proxy
	_BUILD_ARGS+=--build-arg http_proxy=${http_proxy}
endif
ifdef https_proxy
	_BUILD_ARGS+=--build-arg https_proxy=${https_proxy}
endif

.PHONY:build
build:

	docker build \
		${_BUILD_ARGS} -t $(IMAGE):$(VERSION) .
