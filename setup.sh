#!/bin/bash

#author="okoth kongo"
#purpose="setup computer"

MYOS=$(uname)

function initial_setup (){
  sudo apt-get update && sudo apt-get upgrade -y
  sudo apt-get update -y
  source deps_setup/git_and_asdf.sh
  source deps_setup/shells.sh
  source deps_setup/editors.sh
  source deps_setup/langs.sh
  source deps_setup/services.sh
  source deps_setup/other_setups.sh
  source deps_setup/browsers.sh
}
if [[ $MYOS == "Linux" ]] ; then
  echo "This installation setup for Linux fitting $(lsb_release -d) has began ..."
  initial_setup
  setup_shell
  setup_git_and_asdf
  setup_editors
  install_langs
  install_services
  other_installation
  install_browsers
  #TO DO implement source for zshrc
  source ~/.bashrc
 echo "Installations Successful."
else
  echo "Only linux supported for now"
fi
