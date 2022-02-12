# jenkins-ansible
An example of how to use Jenkins and Ansible in conjunction.

# How to do it
There are 2 possible way to do archive this.

## **The easy way**
The easy way involve running ansible directly on the worker node.

The worker node requires the following packages:

- `ansible` to be able to use Ansible
- `sshpass` to be able to login the desired machines only with credentials

The Jenkins server requires the following plugin:

- [Ansible plugin](https://plugins.jenkins.io/ansible/)
- [ANSI Color](https://plugins.jenkins.io/ansicolor/)

The pipeline is defined in the file `Jenkinsfile`.

## **The hard way**
The hard way involve running ansible inside a container

The worker node requires the following packages:

- `docker` to be able to use Ansible

The Jenkins server requires the following plugin:

- [Ansible plugin](https://plugins.jenkins.io/ansible/)
- [ANSI Color](https://plugins.jenkins.io/ansicolor/)
- [Docker Plugin](https://plugins.jenkins.io/docker-plugin/)
- [Docker Pipeline](https://plugins.jenkins.io/docker-workflow/)

The pipeline is defined in the file `container.Jenkinsfile`.

# Notes

I tried to use the official ansible containers withouth success.
Therefore I made one myself and it's defined in the Dockerfile.

To build the container with `podman`, use the command:

    podman build -t ansible .

To test the container with `podman`, use the command:

    podman run -it ansible /bin/sh

If you prefer to use `docker`, the previous commads are still correct, simply change `podman` with `docker`.

License
-------

MIT

Author Information
------------------

If you like my work and want to know more, visit my website:
[www.mattiarubini.com](https://www.mattiarubini.com)
