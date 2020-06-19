FROM alpine:latest

LABEL maintainer="igor@tkiv.ru"

RUN apk add dante-server --no-cache \
    && rm -rf /var/cache/apk/*

COPY sockd.conf /etc/sockd.conf
COPY create_users_from_file.sh /scripts/create_users_from_file.sh
COPY create_users_interactive.sh /scripts/create_users_interactive.sh
COPY users.list /scripts/users.list

EXPOSE 1080

ENTRYPOINT ["/scripts/create_users_from_file.sh"]

CMD ["/usr/sbin/sockd"]
