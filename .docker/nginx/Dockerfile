FROM nginx:1.15.0-alpine

# RUN apk add --no-cache openssl wget
ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

RUN rm /etc/nginx/conf.d/default.conf
WORKDIR /var/www/

ARG NGINX_HOST
ARG NGINX_PORT
ENV NGINX_HOST $NGINX_HOST
ENV NGINX_PORT $NGINX_PORT

COPY ./nginx.conf /tmp/
RUN dockerize -template /tmp/nginx.conf:/etc/nginx/conf.d/nginx.conf
RUN cat /etc/nginx/conf.d/nginx.conf
#COPY ./nginx.conf /etc/nginx/conf.d/

