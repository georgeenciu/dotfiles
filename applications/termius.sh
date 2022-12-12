#!/bin/bash

install_termius() {
  if exists "termius-app"; then
    echo_item "termius is already installed" "green"
  else
    echo_item "installing termius" "green"
    sudo snap install termius-app
  fi
}
