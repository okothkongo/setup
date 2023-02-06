#!/bin/bash
function setup_docker(){
  source deps_setup/services/docker/docker.sh
  source deps_setup/services/docker/docker_compose.sh
  install_docker
  setup_docker_compose
}