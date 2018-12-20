FROM alpine:edge

MAINTAINER Chiachun Chiu <chiachun.chiu@gmail.com>

ADD https://github.com/infphilo/centrifuge/archive/v1.0.4-beta.tar.gz /tmp

RUN apk update && \
	apk add --no-cache bash gcc g++ make python python-dev perl && \
	cd /tmp && tar -zxvf v1.0.4-beta.tar.gz && \
	cd centrifuge-1.0.4-beta && \ 
	make && make install && \
	cd / && rm -rf /tmp/*
