FROM ubuntu:focal-20210921@sha256:a69f632a744de3df3ffd9f581a6a3242e3235b78b3b6c9d3bb4aff152f736dad
LABEL maintainer "fsdevops@evry.com"
#avoid interactive dialouges from apt:
ENV DEBIAN_FRONTEND=noninteractive LANG=C.UTF-8
RUN apt-get update && \
	apt-get --no-install-recommends -y install curl ca-certificates vim-tiny iputils-ping netcat iproute2 net-tools tar gzip bzip2 unzip tzdata lsof psmisc less && \
	apt-get -y clean && \
	rm -rf /var/cache/apt /var/lib/apt/lists/* /tmp/* /var/tmp/*
