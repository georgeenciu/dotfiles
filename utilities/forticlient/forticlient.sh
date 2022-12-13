#!/bin/bash

install_forticlient() {
  if exists "forticlient"; then 
    echo_item "forticlient is already installed" "green"
  else
    wget -O - https://repo.fortinet.com/repo/6.4/ubuntu/DEB-GPG-KEY | sudo apt-key add -
    sudo tee /etc/apt/sources.list.d/forticlient.list<<EOF
deb [arch=amd64] https://repo.fortinet.com/repo/7.0/ubuntu/ /bionic multiverse
EOF
    sudo apt update
    sudo apt install -q --yes forticlient
  fi
}
