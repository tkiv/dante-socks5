#!/bin/sh

file=/scripts/users.list

if [ -s "$file" ]
then
    while read line
    do
        PROXY_USER=`echo $line | cut -d ":" -f1`
        adduser -D -H -s /sbin/nologin $PROXY_USER
        echo $line | chpasswd
    done < $file
fi

exec "$@"
