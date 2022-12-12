#!/bin/bash

install_rust() {
  if exists "rustup"; then
    echo_item "rust is already installed" "green"
  else
    echo_item "installing rustup" "green"
    if exists "rustc"; then
      echo_item "rust is already installed" "green"
    else
      sudo apt remove -qq --yes rustc
    fi
    curl --silent --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    source $HOME/.cargo/env
  fi
}
