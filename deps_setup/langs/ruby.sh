#!/bin/bash
function setup_ruby(){
  asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
  asdf install ruby 3.2.o
  asdf global ruby 3.2.0
  gem install bundler rails
}