#!/bin/bash

# TODO: ADD THE OTHER APPS
install_proton() {
  if exists "protonvpn"; then
    echo_item "proton apps are already installed" "green"
  else
    echo_item "installing proton apps" "green"
    wget -O proton.deb https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3_all.deb
    sudo apt install -qq --yes ./proton.deb
    sudo apt update
    sudo apt -qq --yes install protonvpn
    rm -f proton.deb
  fi
}
