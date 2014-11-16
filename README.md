Ansible-MacPorts-Devbox
=======================

Ansible managed devbox environment using macports

Preparing your Mac
------------------

To install MacPorts, XCode command line tools and Ansible you can run the ./prepare-mac.sh script.
Please make sure you installed XCode from the app store before.

Installing the devbox
---------------------

To install your devbox run the following command:

```
  ansible-playbook playbook.yml -i hosts
```
