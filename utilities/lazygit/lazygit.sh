#!/bin/bash

install_lazygit() {
  if exists "lazygit"; then 
    echo_item "lazygit is already install" "green"
  else
    echo_item "installing lazygin" "green"
    LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep '"tag_name":' |  sed -E 's/.*"v*([^"]+)".*/\1/')
    curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
    sudo tar xf lazygit.tar.gz -C /usr/local/bin lazygit
    mkdir ~/.config/lazygit
    ln -sfn ~/code/georgeenciu/dotfiles/utilities/lazygit/lazygit_config.yml ~/.config/lazygit/config.yml 
  fi
}
