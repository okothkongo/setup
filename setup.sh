#!/bin/bash

#author="okoth kongo"
#purpose="setup computer"

MYOS=$(uname)

function initial_setup (){
  sudo apt-get update && sudo apt-get upgrade -y
  sudo apt install curl -y
  sudo apt-get install wget -y
  sudo apt install software-properties-common apt-transport-https wget -y

}

function setup_git_and_asdf () {
  sudo add-apt-repository -y ppa:git-core/ppa
  sudo apt-get update
  sudo apt-get install git -y
  echo "setting up git configs."
  cp .gitconfig ~/.gitconfig
  echo "git configs successful"
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.1
  echo "" >> bashrc
  echo "" >> bashrc
  echo "#***Deps Setup***" >> bashrc
  echo "" >> bashrc
  echo  "#asdf" >> bashrc
  echo '. "$HOME/.asdf/asdf.sh"' >> bashrc
  echo '. "$HOME/.asdf/completions/asdf.bash"' >> bashrc
  #TO DO implement source for zshrc
  source ~/.bashrc
}

function setup_shell () {
  SHELL_TYPE="$(which $SHELL| grep -oE "[^/]+$")"
  if [ $SHELL_TYPE == "bash" ]; then
    cp .bash_aliases ~/.bash_aliases 
     source ~/.bashrc
  else 
      echo "Only bash supported for now"
  fi
}



if [[ $MYOS == "Linux" ]] ; then
  echo "This installation setup for Linux fitting $(lsb_release -d) has began ..."
  initial_setup
  setup_shell
  setup_git_and_asdf
  #TO DO implement source for zshrc
  source ~/.bashrc
 echo "Installations Successful."
else
  echo "Only linux supported for now"
fi
