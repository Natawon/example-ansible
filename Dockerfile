FROM docker.io/alpine:3

# When jenkins uses ansible inside the container, ansible tries to create a temp folder /.ansible
# Since Jenkins doesn't login as root, ansible doesn't have permission to create the temp folder
# It's necessary to create this folder whit full permission for any user 
RUN mkdir -m 777 /.ansible

RUN apk add ansible sshpass

# Tests
RUN adduser -S ansible

RUN apk add openrc openssh \
&& rc-update add sshd