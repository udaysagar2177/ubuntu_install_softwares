#!/bin/bash
set -xe

hostOS=$(cat /etc/*-release | grep PRETTY_NAME | grep -o '".*"' | sed 's/"//g' | sed -e 's/([^()]*)//g' | sed -e 's/[[:space:]]*$//')
if [ -f /etc/redhat-release ]; then
hostOS=$(head -n 1 /etc/redhat-release)
fi

case $hostOS in
     "Amazon"* | "CentOS"*)
	echo "executing commands on Amazon OS or CentOS"
        ;;
     "Ubuntu"*)
        echo "executing commands on Ubuntu"
        ;;
     *)
	echo "Unsupported operating system!"
	;;
esac
