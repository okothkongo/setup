#!/bin/bash
function setup_nodejs () {
  asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
  asdf install nodejs 18.14.0 
  asdf global nodejs 18.4.0
}