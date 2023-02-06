
function setup_shell () {
  SHELL_TYPE="$(which $SHELL| grep -oE "[^/]+$")"
  if [ $SHELL_TYPE == "bash" ]; then
    cp .bash_aliases ~/.bash_aliases 
     source ~/.bashrc
  else 
      echo "Only bash supported for now"
  fi
}