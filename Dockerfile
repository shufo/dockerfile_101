FROM alpine:3.8

MAINTAINER Masaki Uchida


RUN apk update
RUN apk add curl
RUN apk add drill

RUN touch foobar.txt
RUN echo 'baz' > foobar.txt

RUN touch /etc/apk/repositories
RUN echo wget http://dl-cdn.alpinelinux.org/alpine/v3.8/edge > /etc/apk/repositories

RUN touch foo.txt

WORKDIR /app

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt
ENV foo baz

EXPOSE 8080

VOLUME ["/bar"]
