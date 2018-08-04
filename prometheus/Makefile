IMAGE=jeffrey4l/prometheus
VERSION=2.3.1
BUILD_ARGS=--build-arg PROMETHEUS_VERSION=$(VERSION)

ifdef http_proxy
	_BUILD_ARGS+=--build-arg=http_proxy:${http_proxy}
endif
ifdef https_proxy
	_BUILD_ARGS+=--build-arg=https_proxy:${https_proxy}
endif

.PHONY:build
build:

	docker build ${BUILD_ARGS} ${_BUILD_ARGS} -t $(IMAGE):$(VERSION) .

push: build
	echo docker push $(IMAGE):$(VERSION)
ifdef LATEST
	echo docker tag $(IMAGE):$(VERSION) $(IMAGE):latest
	echo docker push $(IMAGE):latest
endif
