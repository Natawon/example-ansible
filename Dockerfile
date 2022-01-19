FROM docker.io/alpine:3

RUN adduser -h ansibleuser

WORKDIR /home/ansibleuser

RUN apk add ansible sshpass

USER ansibleuser