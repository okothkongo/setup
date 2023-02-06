#!/bin/bash
function setup_go () {
 asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
 asdf install go 1.19.5
 asdf global go 1.19.5
}