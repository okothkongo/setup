#!/bin/bash

function setup_postgres (){
  sudo apt install postgresql postgresql-contrib
  sudo systemctl start postgresql.service
}