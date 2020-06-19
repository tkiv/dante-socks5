FROM alpine:latest

LABEL maintainer="igor@tkiv.ru"

RUN apk add dante-server --no-cache \
    && rm -rf /var/cache/apk/*

COPY sockd.conf /etc/sockd.conf
COPY addusers.sh /scripts/addusers.sh

EXPOSE 1080

CMD ["/usr/sbin/sockd"]
