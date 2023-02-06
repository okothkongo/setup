#!/bin/bash

function setup_elixir (){
  #erlang
  sudo apt-get -y install build-essential autoconf m4 libncurses5-dev libwxgtk3.0-gtk3-dev libwxgtk-webview3.0-gtk3-dev libgl1-mesa-dev libglu1-mesa-dev libpng-dev libssh-dev unixodbc-dev xsltproc fop libxml2-utils libncurses-dev openjdk-11-jdk
  asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git
  asdf install erlang 25.2.2
  asdf global erlang 25.2.2
  #elixir
  asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
  asdf install elixir 1.14.3
  asdf global elixir 1.14.3

  mix local.hex --if-missing --force
  mix local.rebar --if-missing --force
  mix archive.install hex phx_new --if-missing --force
  echo "" >> ~/.bashrc
  echo "#elixir" >> ~/.bashrc
  echo export ERL_AFLAGS='"-kernel shell_history enabled"' >> ~/.bashrc
}