FROM docker.io/alpine:3

RUN apk add ansible sshpass

RUN adduser -S jenkins

WORKDIR /home/jenkins

USER jenkins