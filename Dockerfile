FROM docker.io/alpine:3

RUN apk add ansible \
&& apk add sshpass