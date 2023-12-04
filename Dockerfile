FROM ubuntu:focal-20231128
LABEL maintainer "fsdevops@evry.com"
#avoid interactive dialouges from apt:
ENV DEBIAN_FRONTEND=noninteractive LANG=C.UTF-8
RUN apt-get update && \
	apt-get --no-install-recommends -y install curl ca-certificates tar gzip bzip2 unzip tzdata psmisc less && \
	apt-get -y clean && \
	rm -rf /var/cache/apt /var/lib/apt/lists/* /tmp/* /var/tmp/*
