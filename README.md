# Ubuntu Install Softwares  [![Build Status](https://travis-ci.org/udaysagar2177/ubuntu_install_softwares.svg?branch=master)](https://travis-ci.org/udaysagar2177/ubuntu_install_softwares)

This repo holds 
 * script to initialize my Ubuntu machines with useful software of my choice
 * script to setup bashrc

RUN
The init.sh script installs essential softwares and calls setup_bashrc.sh to setup aliases.

```shell
curl https://raw.githubusercontent.com/udaysagar2177/ubuntu_install_softwares/master/init.sh | bash
```

when running the above script on Docker, download the script and run by supplying an argument "on_docker" at position 1