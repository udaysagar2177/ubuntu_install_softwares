# Ubuntu Install Softwares  [![Build Status](https://travis-ci.org/udaysagar2177/ubuntu_install_softwares.svg?branch=master)](https://travis-ci.org/udaysagar2177/ubuntu_install_softwares)

This repo holds 
script to Initialize any Ubuntu machine with useful software of my choice
script to setup bashrc

For Software Install, RUN
```shell
#determine if the script is being run by root or not
user=$(whoami)
if [ "$user" == "root" ]; then
sudo=""
else
sudo="sudo"
fi
curl https://raw.githubusercontent.com/udaysagar2177/ubuntu_install_softwares/master/install_softwares.sh | $sudo bash
```

For bashrc setup, RUN
```shell
curl https://github.com/udaysagar2177/ubuntu_install_softwares/raw/master/setup_bashrc.sh | bash
```

when running the above script on Docker, download the script and run by supplying an argument "on_docker" at position 1
