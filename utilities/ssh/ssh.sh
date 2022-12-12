#!/bin/bash

configure_ssh() {
  SSH_DIR=~/.ssh
  SSH_CONFIG=~/.ssh/config
  GITHUB_OWN_KEY_PUB=~/.ssh/georgeenciu.pub

  mkdir -p $SSH_DIR

  if [[ -f "$GITHUB_OWN_KEY_PUB" || -L "$GITHUB_OWN_KEY_PUB" ]]; then
    echo_item "ssh key for georgeenciu@gh was already created" "green"
  else
    echo_item "generating a ssh key for georgeenciu@gh" "green"
    ssh-keygen -t rsa -b 4096 -f ~/.ssh/georgeenciu -C "george.enciu@gmail.com"
  fi

  echo_item "symlinking ssh config to ~/.ssh/config" "green"
  ln -sf ~/code/georgeenciu/dotfiles/utilities/ssh/config ~/.ssh/config
  chmod 600 ~/.ssh/config
}
