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

install_lua_language_server() {
  LANGUAGE_SERVER_DIR=~/lua-language-server
  if [[ ! -d "$LANGUAGE_SERVER_DIR" ]]; then
    echo_item "installing lua language server" "green"
		sudo apt -qq --yes install ninja-build libreadline-dev
    cd
    git clone https://github.com/sumneko/lua-language-server
    cd lua-language-server
    
    git submodule update --init --recursive
		cd 3rd/luamake
    ./compile/install.sh
    cd ../..
    ./3rd/luamake/luamake rebuild
    cd
    # Install lua formatter
		git clone --recurse-submodules https://github.com/Koihik/LuaFormatter.git
    cd LuaFormatter
    cmake .
    make
    make install
    cd ~/dotfiles
  else
    echo_item "lua language server is already installed" "green"
  fi
}
