FROM docker.io/rockylinux/rockylinux:8.4

RUN dnf update -y \
&& dnf install epel-release -y \
&& dnf install ansible -y
