#!/bin/bash
function setup_db(){
  source deps_setup/services/db/postgres.sh
  source deps_setup/services/db/db_beaver.sh
  setup_postgres
  setup_db_beaver
}