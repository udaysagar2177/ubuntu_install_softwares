# Ubuntu Install Softwares

This is the script to initialize any Ubuntu machine with useful software of my choice

RUN
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

when running the above script on Docker, download the script and run by supplying an argument "on_docker" at position 1