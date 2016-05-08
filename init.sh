#!/bin/bash
set -xe

#determine if the script is being run by root or not
user=$(whoami)
if [ "$user" == "root" ]; then
	sudo=""
else
	sudo="sudo"
fi

# update system
$sudo apt-get update

# install basic softwares
$sudo apt-get install -y apt-transport-https python-software-properties software-properties-common
$sudo apt-get install -y vim curl wget net-tools python

# Install and setup GIT
$sudo apt-get install -y git
git config --global user.name "udaysagar2177"
git config --global user.email "udaysagar.2177@gmail.com"

# install pip
wget https://bootstrap.pypa.io/get-pip.py
$sudo python get-pip.py
rm get-pip.py

# Do not execute below commands if script is being executed on Docker container
if [[ $1 != "on_docker" ]]; then
	# install docker
	curl -sSL https://get.docker.com/ | $sudo sh

	# install maestro-NG and its dependency
	$sudo apt-get install python-dev
	$sudo pip install maestro
fi

# setup bashrc
curl -sS https://raw.githubusercontent.com/udaysagar2177/ubuntu_install_softwares/master/setup_bashrc.sh | $sudo bash
