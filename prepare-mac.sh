#!/usr/bin/env bash

which -s port
if [[ $? != 0 ]] ; then
	echo "MacPorts Installation"
	curl -O https://distfiles.macports.org/MacPorts/MacPorts-2.3.2-10.10-Yosemite.pkg
	sudo installer -verbose -pkg MacPorts-2.3.2-10.10-Yosemite.pkg -target /
	sudo port -v selfupdate
	read -p "Continue ? [Enter]"
	echo ""
fi

if [ ! -f "/Library/Developer/CommandLineTools/usr/bin/clang" ]; then
	echo "XCode Tools Installation"
	echo "This will open up a modal window ... Get back here when ready !"
	sudo /usr/bin/xcode-select --install
	read -p "Continue ? [Enter]"
	echo ""
fi

which -s ansible
if [[ $? != 0 ]] ; then
	echo "Ansible Installation"
	sudo port install ansible
	read -p "Continue ? [Enter]"
	echo ""
fi
