# jenkins-ansible
An example of how to use Jenkins and Ansible in conjunction.

In this specific case, we also will use the Docker and Docker Pipeline plugins.
Rather than using an agent with ansible installed, we will use a container with ansible installed in it.

because we use the ssh username and pasword, instead of a verified key:

    set in the config file 
        host_key_checking = False

    install the package
        sshpass

To test the container:

    podman run -it ansible /bin/sh