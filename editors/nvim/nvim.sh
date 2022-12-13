#!/bin/bash

install_nvim() {
  if exists "nvim"; then
    echo_item "neovim is already installed" "green"
  else
    echo_item "installing neovim" "green"
		curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
		chmod u+x nvim.appimage
		sudo mv nvim.appimage /usr/bin/nvim
		go install github.com/mattn/efm-langserver@latest
  fi
}

configure_nvim() {
  echo_item "symlinking nvim configuration" "green"
  rm -rf ~/.config/nvim
  ln -sfn ~/code/georgeenciu/dotfiles/editors/nvim ~/.config/nvim

  echo_item "installing nvim plugins" "green"
  nvim "+PackerInstall" +qall

  echo_item "updating nvim plugins" "green"
  nvim "+PackerUpdate" +qall

	echo_item "installing required python packages"
  python3 -m pip install --user --upgrade pynvim
}

source './php_actor.sh'
install_phpactor
