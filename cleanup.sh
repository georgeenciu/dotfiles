#!/bin/bash

uninstall_unwanted_software() {
  if exists "rhythmbox"; then
    echo_item "uninstalling rhythmbox" "green"
    sudo apt -qq --yes remove rhythmbox
  else
    echo_item "rhythmbox is already uninstalled" "green"
  fi

  if exists "gnome-mahjongg"; then
    echo_item "uninstalling mahjongg" "green"
    sudo apt -qq --yes remove gnome-mahjongg
  else
    echo_item "mahjongg is already uninstalled" "green"
  fi

  if exists "gnome-mines"; then
    echo_item "uninstalling mines" "green"
    sudo apt -qq --yes remove gnome-mines
  else
    echo_item "mines is already uninstalled" "green"
  fi
}
