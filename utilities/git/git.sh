#!/bin/bash

install_git() {
  if exists "git"; then
    return 0
  else
    echo_item "installing git" "green"
    sudo apt -qq --yes install git
  fi
}

configure_git() {
  echo_item "symlinking global gitignore" "green"
  ln -sf ~/code/georgeenciu/dotfiles/utilities/git/gitignore_global ~/.gitignore_global

  echo_item "symlinking global gitconfig" "green"
  ln -sf ~/code/georgeenciu/dotfiles/utilities/git/gitconfig ~/.gitconfig

  echo_item "symlinking georgeenciu@gh gitconfig" "green"
  ln -sf ~/code/georgeenciu/dotfiles/utilities/git/gitconfig_gh ~/code/georgeenciu/.gitconfig
  ln -sf ~/code/georgeenciu/dotfiles/utilities/git/gitconfig_nch ~/code/nch/.gitconfig
  ln -sf ~/code/georgeenciu/dotfiles/utilities/git/gitconfig_nch ~/code/itworks/.gitconfig
}
