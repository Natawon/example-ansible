FROM docker.io/alpine:3

# When jenkins uses ansible inside the container, ansible tries to create a temp folder /.ansible
# Since Jenkins doesn't login as root, ansible doesn't have permission to create the temp folder
# It's necessary to create this folder whit full permission for any user 
RUN mkdir -m 777 /.ansible

RUN apk add ansible sshpass

# This part is required if it is desired to execute local_action tasks
RUN apk add openssh \
&& rc-update add sshd \