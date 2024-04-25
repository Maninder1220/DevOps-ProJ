#!/bin/bash

# - - - - - - - - - - - - - - - - 
# 
# Script Action :
# Install Software in Multiple Flavours of OS
#
# You need to know :
# Variables | If-else in shell scripting
#
# - - - - - - - - - - - - - - - -
#
echo "script to install git"
echo " Updating System"
sudo apt update
echo "Installation started"

if ["$(uname)" == "Linux" ];
then
	echo "This is Linux Machine"
	echo "Installing Git"
	sudo apt install -y git
elif ["$(uname)" == "Darwin" ];
then
	echo "This is MacOS Machine"
	echo "Installing git on MacOS"
	brew install git --yes
else
	echo "Not Installed"
fi

