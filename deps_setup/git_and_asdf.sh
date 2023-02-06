#!/bin/bash
function setup_git_and_asdf () {
  sudo add-apt-repository -y ppa:git-core/ppa
  sudo apt-get update
  sudo apt-get install git -y
  echo "setting up git configs."
  cp .gitconfig ~/.gitconfig
  echo "git configs successful"
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.1
  echo "" >> ~/.bashrc
  echo "" >> ~/.bashrc
  echo "#***Deps Setup***" >> ~/.bashrc
  echo "" >> bashrc
  echo  "#asdf" >> bashrc
  echo '. "$HOME/.asdf/asdf.sh"' >> ~/.bashrc
  echo '. "$HOME/.asdf/completions/asdf.bash"' >> ~/.bashrc
  #TO DO implement source for zshrc
  source ~/.bashrc
}
