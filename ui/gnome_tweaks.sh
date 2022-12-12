#!/bin/bash

install_gnome_tweaks() {
  if exists "gnome-tweaks"; then
    echo_item "gnome tweaks is already installed" "green"
  else
    echo_item "installing gnome tweaks" "green"
    sudo apt -qq --yes install gnome-tweaks
    sudo apt -qq --yes install gnome-shell-extension-autohidetopbar
  fi
}
