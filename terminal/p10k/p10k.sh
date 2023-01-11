#!/bin/bash

install_p10k() {
  if exists "p10k"; then
    echo_item "p10 is already installed" "green"
  else
    echo_item "installing p10k" "green"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
  fi
}

