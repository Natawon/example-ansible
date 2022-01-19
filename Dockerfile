FROM docker.io/alpine:3

RUN apk add ansible sshpass

RUN adduser -S ansibleuser

WORKDIR /home/ansibleuser

USER ansibleuser