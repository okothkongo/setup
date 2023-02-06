

function other_installation(){
  sudo snap install ngrok
  sudo apt-get install -y jq
  sudo apt-get install -y direnv
  # ngrok config add-authtoken <token>
  echo ""
  echo "#direnv"
  echo 'eval "$(direnv hook bash)"' >> ~/.bashrc
  
}