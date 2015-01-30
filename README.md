Ansible-MacPorts-Devbox
=======================

Ansible managed devbox environment using macports

Preparing your Mac
------------------

To install MacPorts, XCode command line tools and Ansible you can run the ./prepare-mac.sh script.
Please make sure you installed XCode from the app store before.
It is okay to use python as well to install Ansible if you prefer.

It is important you install Java before running the playbook to make sure Elasticsearch can
actually start. Make sure you download Java from Oracle or so, not the apple one as that one
will be too old.

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

Ansible vault
-------------

If you fork this repo or want to commit yml files to git it's a good idea to encrypt the variable
files using ansible-vault. But passing in a password might be quite a hazzle all the time, so
make sure nobody can touch your little secret password file and use the following command:

```
  echo "my vault password" > ~/.ansible_vault
  chmod 600 ~/.ansible_vault
```

Now you can add `--vault-password-file ~/.ansible_vault` to your ansible-playbook commands to have
a bit of security as long as you don't compromise the `~/.ansible_vault` file of course ;-)

Local variables
---------------

Some roles might allow you to overwrite local variables. For this a file named
`~/.ansible-devbox.yml`. If you want to use a vault use the following command:

```
  ansible-vault --vault-password-file ~/.ansible_vault create ~/.ansible-devbox.yml
```
