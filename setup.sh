#!/bin/bash

#author="okoth kongo"
#purpose="setup computer"

MYOS=$(uname)

function initial_setup (){
  sudo apt-get update && sudo apt-get upgrade -y
  sudo apt install curl -y
  sudo apt-get install wget -y
  sudo apt install software-properties-common apt-transport-https wget -y
  source deps_setup/git_and_asdf.sh
  source deps_setup/shell.sh
  source deps_setup/editors.sh
}
if [[ $MYOS == "Linux" ]] ; then
  echo "This installation setup for Linux fitting $(lsb_release -d) has began ..."
  initial_setup
  setup_shell
  setup_git_and_asdf
  setup_editors
  #TO DO implement source for zshrc
  source ~/.bashrc
 echo "Installations Successful."
else
  echo "Only linux supported for now"
fi
