FROM ubuntu:focal-20210723@sha256:82becede498899ec668628e7cb0ad87b6e1c371cb8a1e597d83a47fac21d6af3
LABEL maintainer "fsdevops@evry.com"
#avoid interactive dialouges from apt:
ENV DEBIAN_FRONTEND=noninteractive LANG=C.UTF-8
RUN apt-get update && \
	apt-get --no-install-recommends -y install curl ca-certificates vim dnsutils iputils-ping netcat iproute2 net-tools tar gzip bzip2 unzip tzdata lsof psmisc less && \
	apt-get -y clean && \
	rm -rf /var/cache/apt /var/lib/apt/lists/* /tmp/* /var/tmp/*
