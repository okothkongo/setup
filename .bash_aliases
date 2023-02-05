#### 
######  **** alias ****

#update and upgrade
alias update='sudo apt-get update && sudo apt-get upgrade'


# elixir
alias phx='iex -S mix phx.server'
alias live_phx='lsof -wni tcp:4000'
alias imix='iex -S mix'
export ERL_AFLAGS="-kernel shell_history enabled"

#flutter
export PATH="$PATH:/snap/bin/flutter"

# go 
export GOPATH=$HOME/code/go


# asdf setup
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

#direnv
eval "$(direnv hook bash)" 

 #files
 alias rm="rm -i"
 alias rf= "rf -rm -i"
 alias tree="tree . -L"
 alias ..='cd ..;pwd'
 alias ...='cd ../..;pwd'
 alias ....='cd ../../..;pwd'


 #history
 alias c='clear'
 alias h='history'
