FROM docker.io/alpine:3

RUN apk add \
    python3 \
    py3-pip \
    sshpass \
&& python -m pip install ansible
