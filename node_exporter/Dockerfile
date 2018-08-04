From alpine:3.8

ARG NODE_EXPORTER_VERSION=0.16.0

ENV NODE_EXPORTER_DOWNLOAD_URL https://github.com/prometheus/node_exporter/releases/download/v${NODE_EXPORTER_VERSION}/node_exporter-${NODE_EXPORTER_VERSION}.linux-amd64.tar.gz

RUN apk add curl tini\
    && ln -s /sbin/tini /tini \
    && mkdir -p /opt \
    && curl -L ${NODE_EXPORTER_DOWNLOAD_URL} -o /tmp/node_exporter.tar.gz \
    && tar xvf /tmp/node_exporter.tar.gz -C /opt \
    && ln -s /opt/node_exporter-${NODE_EXPORTER_VERSION}.linux-amd64 /opt/node_exporter \
    && ln -s /opt/node_exporter/node_exporter /usr/bin/node_exporter \
    && rm -rf /tmp/node_exporter.tar.gz \
    && rm -rf /var/cache/apk/*
