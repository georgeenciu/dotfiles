#!/bin/bash

install_termius() {
  if exists "termius"; then
    echo_item "termius is already installed" "green"
  else
    echo_item "installing termius" "green"
    sudo snap install termius
  fi
}
