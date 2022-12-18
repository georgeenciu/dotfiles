#!/bin/bash

install_dbeaver() {
  if exists "dbeaver-ce"; then 
    echo_item "dbeaver is already installed" "green"
  else
    echo_item "installing dbeaver" "green"
    sudo  wget -O /usr/share/keyrings/dbeaver.gpg.key https://dbeaver.io/debs/dbeaver.gpg.key
    echo "deb [signed-by=/usr/share/keyrings/dbeaver.gpg.key] https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
    sudo apt-get update && sudo apt-get install dbeaver-ce
  fi
}
