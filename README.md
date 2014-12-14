Ansible-MacPorts-Devbox
=======================

Ansible managed devbox environment using macports

Preparing your Mac
------------------

To install MacPorts, XCode command line tools and Ansible you can run the ./prepare-mac.sh script.
Please make sure you installed XCode from the app store before.
It is okay to use python as well to install Ansible if you prefer.

Installing the devbox
---------------------

To install your devbox run the following commands:

```
  cd devbox
  ansible-playbook playbook.yml -i hosts -K
```

The `-K` parameter will be helpful if you run into issues with sudo, but might not be needed.
If errors occur - just run the command again.

What will you get
-----------------

The result will be a development setup which uses nginx and looks for projects in your personal `Sites` folder.
Please check the nginx configuration to see where nginx is really looking for your projects to exist, since there
are multiple types configured (.dev for normal webdevelopment, .flow for neos and flow projects).