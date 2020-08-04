#!/bin/sh

install_or_update()
{
	FORMULA=$1
if brew ls --versions $FORMULA > /dev/null; then
	echo "Installed version found"
	echo "Updating.. $FORMULA."
	brew upgrade $FORMULA  
else
	echo "$FORMULA formula not found on device, installing $FORMULA " 
	brew install $FORMULA
fi	
}

install_cask()
{
	FORMULA=$1
	echo "Checking for $FORMULA"

if brew cask list $FORMULA > /dev/null; then
	echo "Installed version found $FOMRULA"
	brew cask upgrade
else
	echo "Cask not found, installing $FORMULA" 
	brew cask install $FORMULA
fi	
}
echo "Start Installation for local-setup"
install_or_update skaffold
install_cask minishift 

# OpenShift-CLI
install_or_update openshift-cli
