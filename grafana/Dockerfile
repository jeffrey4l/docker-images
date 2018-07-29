FROM centos:7

ARG TINI_VER=v0.18.0
ARG GRAFANA_VER=5.2.1

COPY grafana.repo /etc/yum.repos.d/grafana.repo

RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 \
    && rpm --import https://packagecloud.io/gpg.key \
    && rpm --import https://grafanarel.s3.amazonaws.com/RPM-GPG-KEY-grafana \
    && curl -L https://github.com/krallin/tini/releases/download/${TINI_VER}/tini -o /tini \
    && yum -y install grafana \
    && chmod +x /tini \
    && mkdir -p /usr/share/grafana/data \
    && chmod 777 /var/lib/grafana /var/log/grafana /usr/share/grafana/data \
    && yum clean all

WORKDIR /usr/share/grafana
