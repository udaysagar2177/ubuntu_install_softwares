#!/bin/bash
set -xe

# Use caution when using this script, first check if any swap is enabled
# follow https://www.digitalocean.com/community/tutorials/how-to-add-swap-on-ubuntu-14-04
# for more information


#determine if the script is being run by root or not
user=$(whoami)
if [ "$user" == "root" ]; then
	sudo=""
else
	sudo="sudo"
fi

fallocate -l 4G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
echo "/swapfile   none    swap    sw    0   0" >> /etc/fstab