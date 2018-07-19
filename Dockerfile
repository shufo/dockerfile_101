FROM alpine:3.8

ENV PATH $PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt

RUN apk add curl \
  && apk add drill

RUN touch foo.txt

RUN touch foobar.txt
RUN echo "baz" > /foobar.txt

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.8/edge' >> /etc/apk/repositories

EXPOSE 8080
WORKDIR /app
VOLUME /bar
ENV foo=baz