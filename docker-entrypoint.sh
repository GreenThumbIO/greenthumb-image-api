#!/bin/sh

if [ "$1" = 'thumbor' ]; then
    exec thumbor -p=$PORT -c thumbor.conf
fi

exec "$@"
