From alpine:3.8

ARG PROMETHEUS_VERSION=2.3.1

ENV PROMETHEUS_DOWNLOAD_URL https://github.com/prometheus/prometheus/releases/download/v${PROMETHEUS_VERSION}/prometheus-${PROMETHEUS_VERSION}.linux-amd64.tar.gz

RUN apk add curl tini\
    && ln -s /sbin/tini /tini \
    && mkdir -p /opt \
    && curl -L ${PROMETHEUS_DOWNLOAD_URL} -o /tmp/prometheus.tar.gz \
    && tar xvf /tmp/prometheus.tar.gz -C /opt \
    && ln -s /opt/prometheus-${PROMETHEUS_VERSION}.linux-amd64 /opt/prometheus \
    && rm -rf /tmp/prometheus.tar.gz \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["/tini", "--"]
