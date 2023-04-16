#!/bin/bash
function setup_ruby(){
  asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
  asdf install ruby 3.1.2
  asdf global ruby 3.1.2
  gem install bundler rails
}
