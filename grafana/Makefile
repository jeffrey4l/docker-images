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

	docker build --build-arg GRAFANA_VERSION=$(VERSION) \
		${_BUILD_ARGS} -t $(IMAGE):$(VERSION) .

.PHONY:push
push: build
	docker push $(IMAGE):$(VERSION)

ifdef LATEST
	docker tag $(IMAGE):$(VERSION) $(IMAGE):latest
	docker push $(IMAGE):latest
endif
