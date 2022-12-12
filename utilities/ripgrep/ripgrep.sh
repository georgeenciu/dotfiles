#!/bin/bash

install_ripgrep() {
  if exists "rg"; then
    echo_item "ripgrep is already installed" "green"
  else
    echo_item "installing ripgrep" "green"
    sudo apt -qq --yes install ripgrep
  fi
}

configure_ripgrep() {
  echo_item "symlinking ripgrep ignore file" "green"
  ln -sf ~/code/georgeenciu/dotfiles/utilities/ripgrep/ignore ~/.ignore
}
