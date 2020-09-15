#!/bin/sh
export NGINXPROXY
#envsubst '${NGINXPROXY}' < /config.template > /etc/nginx/nginx.conf
#dockerize -template ./.docker/nginx/nginx.conf:/etc/nginx/conf.d/nginx.conf
exec "$@"
