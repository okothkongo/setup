#!/bin/bash
function install_services (){
  source deps_setup/services/db.sh
  source deps_setup/services/docker.sh
  setup_db
  setup_docker
}