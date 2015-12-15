#!/bin/bash
set -xe

# update system
apt-get update

# install basic softwares
apt-get install -y vim curl wget net-tools python

# Install and setup GIT
apt-get install -y git
git config --global user.name "udaysagar2177"
git config --global user.email "udaysagar.2177@gmail.com"

# install pip
wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py
python get-pip.py
rm get-pip.py

# Do not execute below commands if script is being executed on Docker container
if [[ $1 != "on_docker" ]]; then

# install Docker, for ubuntu 14.04, 15.04, 15.10
curl https://raw.githubusercontent.com/udaysagar2177/ubuntu_install_softwares/master/install_docker_on_ubuntu.sh | bash

# install maestro-NG
pip install maestro

fi

# 