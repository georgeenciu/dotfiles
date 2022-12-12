#!/bin/bash

install_php() {
  if exists "php"; then
    echo_item "php is already installed" "green"
  else
    echo_item "installing php" "green"
    sudo apt install -qq --yes php
  fi
}
