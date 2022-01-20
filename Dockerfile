FROM docker.io/alpine:3

RUN apk add ansible sshpass

RUN mkdir -m 777 /.ansible