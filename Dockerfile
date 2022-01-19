FROM docker.io/alpine:3

RUN adduser -S ansibleuser

WORKDIR /home/ansibleuser

RUN apk add ansible sshpass

USER ansibleuser