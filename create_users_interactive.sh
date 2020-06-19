#!/bin/sh

read -p 'Proxy username: ' PROXY_USER
read -s -p 'Proxy password: ' PROXY_PASSWORD

echo

if [ "$PROXY_USER" ]; then
  adduser -D -H -s /sbin/nologin $PROXY_USER
  echo $PROXY_USER:$PROXY_PASSWORD | chpasswd
fi
