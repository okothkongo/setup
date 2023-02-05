#!/bin/bash

#author="okoth kongo"
#purpose="setup computer"

MYOS=$(uname)
function setup_git () {
# GITVERSION="$(which git)"
# WHICHGITLENGTH=${#GITVERSION}
# if [ $WHICHGITLENGTH == 0 ]; then
#   echo "git not available starting to install"
#   sudo add-apt-repository ppa:git-core/ppa -y
#   sudo apt-get update
#   sudo apt-get install git
#   echo "git install successful"
# else
#   echo "git already exist, updating git"
#   sudo add-apt-repository -y ppa:git-core/ppa
#   sudo apt-get update
#   sudo apt-get install git -y
# fi
  sudo add-apt-repository -y ppa:git-core/ppa
  sudo apt-get update
  sudo apt-get install git -y
  echo "setting up git configs."
  cp .gitconfig ~/.gitconfig
  echo "git configs successful"
}

function setup_shell () {
  BASHRC=~/.bashrc
 
if [ -f "$BASHRC" ]; then
  shell=$SHELL
  chsh -s $shell
   cp .bash_aliases ~/.bash_aliases 
else 
    echo "Only bash supported for now"
fi
}



if [[ $MYOS == "Linux" ]]; then
  echo "The availabe linux is version is $(lsb_release -d)"
  echo "Therefore will be setting up "
  echo "Setting up installation files .."
  setup_git
  setup_shell
else
  echo "Only linux supported for now"
fi
