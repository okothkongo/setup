#!/bin/bash
function setup_go () {
 curl -OL https://golang.org/dl/go1.20.linux-amd64.tar.gz
 sudo tar -C /usr/local -xvf go1.20.linux-amd64.tar.gz
 echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
 source ~/.profile
}