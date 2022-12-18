#!/bin/bash

install_termius() {
  if exists "termius-app"; then
    echo_item "termius is already installed" "green"
  else
    echo_item "installing termius" "green"
    wget -O termius.deb https://www.termius.com/download/linux/Termius.deb
    sudo apt install -qq --yes ./termius.deb
    rm -f termius.deb
  fi
}
