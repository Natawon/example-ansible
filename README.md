# jenkins-ansible
An example of how to use Jenkins and Ansible in conjunction.

In this specific case, we also will use the Docker and Docker Pipeline plugins.
Rather than using an agent with ansible installed, we will use a container with ansible installed in it.

To test the container:

    podman run -it ansible /bin/sh