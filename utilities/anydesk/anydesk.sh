#!/bin/bash

install_anydesk() {
  if exists "anydesk"; then 
    echo_item "anydesk is already installed" "green"
  else
    echo_item "installing anydesk" "green"
    wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
    echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
    sudo apt update
    sudo apt install -qq --yes anydesk
  fi
}
