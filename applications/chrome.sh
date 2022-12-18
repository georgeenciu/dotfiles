#!/bin/bash

install_chrome() {
  if exists "google-chrome"; then 
    echo_item "chrome is already installed" "green"
  else
    echo_item "installing chrome" "green"
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    rm -f google-chrome-stable_current_amd64.deb 
  fi
}
