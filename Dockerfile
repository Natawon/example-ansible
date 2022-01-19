FROM docker.io/alpine:3

RUN sudo useradd -m ansibleuser

WORKDIR /home/ansibleuser

RUN apk add ansible sshpass

USER ansibleuser