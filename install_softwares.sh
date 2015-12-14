#!/bin/bash
set -xe

# update system
apt-get update

# install basic softwares
apt-get install -y git vim curl wget net-tools python

# install pip
wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py
python get-pip.py
rm get-pip.py

# Do not execute below commands if script is being executed on Docker container
if [[ $1 != "on_docker" ]]; then

# install Docker, for ubuntu 14.04, 15.04, 15.10
curl https://gist.githubusercontent.com/udaysagar2177/20bf6f8f996ff6c80566/raw/cc375eb821eb13ace9619e68fed13ff21df86b02/install_docker_on_ubuntu.sh | bash

# install maestro-NG
pip install maestro

fi