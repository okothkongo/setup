#!/bin/bash
function setup_rust () {
  # asdf plugin-add rust https://github.com/asdf-community/asdf-rust.git
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh 
}