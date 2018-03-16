FROM docker.made.com/ops/alpine-s6:3.6

RUN addgroup hello && \
    adduser hello -D -g "" -s /bin/sh -G hello hello && \
    mkdir -p /run/uwsgi/ && \
    chown hello:hello /run/uwsgi && \
    mkdir -p /run/nginx/ && \
    chown hello:hello /run/nginx 

RUN apk add --update py3-flask uwsgi-python3 nginx
COPY docker/root /
COPY src/hello.py /opt/hello/hello.py
COPY requirements.txt /tmp/requirements.txt
EXPOSE 80
