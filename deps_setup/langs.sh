#!/bin/bash

function install_langs(){
  source deps_setup/langs/elixir.sh
  source deps_setup/langs/go.sh
  source deps_setup/langs/nodejs.sh
  source deps_setup/langs/rust.sh
  source deps_setup/langs/ruby.sh
  setup_elixir
  setup_go
  setup_nodejs
  setup_rust
  setup_ruby
}