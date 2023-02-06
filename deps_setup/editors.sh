#!/bin/bash

function setup_editors(){
  wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
  sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" -y
  sudo apt-get install code -y
  sudo apt-get install neovim -y
  
}