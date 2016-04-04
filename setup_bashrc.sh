#!/bin/bash
set -xe

# This script is called in init.sh

# Setup bashrc
cat << EOT > ~/.my_bashrc
# git aliases
alias g="git"
alias gc="git commit"
alias gs="git status"
alias gl="git log"
alias gpush="git push origin"
alias gadd="git add --all"
alias gpull="git pull origin"
alias gd="git diff"

# common
alias ll="ls -alF"
alias ps="ps -ef"

# docker
alias dp="docker ps"
## kills docker none images
alias killdn="docker images | grep none | awk '{print $3}' | xargs docker rmi"
## launch a ubuntu container
alias dubuntu="docker run -it ubuntu bash"
## launch a centos container
alias dcentos="docker run -it centos:6 bash"
## exec into the container listed at position $1 in docker ps
dex(){
container=$(docker ps --format "{{.Names}}" | sed -n ${1}p)
echo "Getting inside "$container
docker exec -it $container bash
}
EOT

# source the changes
source ~/.my_bashrc

# make an entry in ~/.profile to source ~/.bashrc 
# for every new terminal
echo "if [ -s ~/.my_bashrc ]; then" >> ~/.profile
echo "    source ~/.my_bashrc;" >> ~/.profile
echo "fi" >> ~/.profile