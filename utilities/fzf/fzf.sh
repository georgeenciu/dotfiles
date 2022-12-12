#!/bin/bash

install_fzf() {
  if exists "fzf"; then
    echo_item "fzf is already installed" "green"
  else
    echo_item "installing fzf" "green"
    sudo apt -qq --yes install fzf
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    sudo ~/.fzf/install.sh
	  ln -sf ~/code/georgeenciu/dotfiles/utilities/fzf/fzfzsh ~/.fzf.zsh
	  ln -sf ~/.fzf/bin/fzf /usr/bin/fzf
  fi
}
