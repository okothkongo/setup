#!/bin/bash
function setup_ruby(){
  asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
  wget http://pyyaml.org/download/libyaml/yaml-0.2.5.tar.gz
  asdf install ruby 3.1.2
  asdf global ruby 3.1.2
  gem install bundler rails
}
