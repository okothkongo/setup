#!/bin/bash
function install_browsers (){
  source deps_setup/browsers/brave.sh
  source deps_setup/browsers/chrome.sh
  setup_brave
  setup_chrome
}