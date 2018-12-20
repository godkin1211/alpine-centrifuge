FROM alpine:edge

MAINTAINER Chiachun Chiu <chiachun.chiu@gmail.com>

WORKDIR /workdir

ADD https://github.com/infphilo/centrifuge/archive/v1.0.4-beta.tar.gz /tmp

RUN apk update && \
	apk add --no-cache --upgrade bash gcc g++ make python python-dev perl wget && \
	cd /tmp && tar -zxvf v1.0.4-beta.tar.gz && \
	cd centrifuge-1.0.4-beta && \ 
	make && make install && \
	mkdir -p /workdir && cd /workdir && rm -rf /tmp/*
