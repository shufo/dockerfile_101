FROM alpine:3.8

RUN apk update && apk add curl && apk add drill
RUN touch foobar.txt && echo 'baz' > foobar.txt
RUN touch /etc/apk/repositories && echo wget http://dl-cdn.alpinelinux.org/alpine/v3.8/edge > /etc/apk/repositories
RUN touch foo.txt

ENV foo baz

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt

VOLUME [ "/bar" ]

WORKDIR /app

EXPOSE 8080
