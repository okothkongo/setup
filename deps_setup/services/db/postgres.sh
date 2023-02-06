#!/bin/bash

function setup_postgres (){
  sudo apt install postgresql postgresql-contrib -y
  sudo systemctl start postgresql.service
}