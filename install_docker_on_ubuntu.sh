#!/bin/bash
set -x
# This script is created by following instructions
# from https://docs.docker.com/installation/ubuntulinux/
# This script is valid for
# 1. Ubuntu Wily 15.10
# 2. Ubuntu Vivid 15.04
# 3. Ubuntu Trusty 14.04 (LTS)
 
# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
echo "This script must be run as root" 1>&2
exit 1
fi
 
# Install docker on your machine
which docker > /dev/null 2>&1
if [ $? -eq 0 ]; then
echo "Docker is already installed on your system"
exit 0
fi
 
# Update your apt-sources
apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get purge lxc-docker*
apt-cache policy docker-engine
 
# Install Docker
apt-get update
apt-get install -y docker-engine
 
# Run and Check Docker
echo "Lets run a hello-world docker image"
echo "It may take some time to download the image..."
docker run hello-world
echo "Docker is successfully installed on your system"