#!/bin/bash

# Setup bashrc
echo "# git aliases" >> ~/.bashrc
echo "alias g=\"git\"" >> ~/.bashrc
echo "alias gc=\"git commit\"" >> ~/.bashrc
echo "alias gs=\"git status\"" >> ~/.bashrc
echo "alias gl=\"git log\"" >> ~/.bashrc
echo "alias gpush=\"git push origin\"" >> ~/.bashrc
echo "alias gadd=\"git add --all\"" >> ~/.bashrc

# source the changes
source ~/.bashrc

# make an entry in ~/.profile to source ~/.bashrc 
# for every new terminal
echo "if [ -s ~/.bashrc ]; then" >> ~/.profile
echo "    source ~/.bashrc;" >> ~/.profile
echo "fi" >> ~/.profile