#!/bin/bash

configure_gpg() {
  echo_item "symlinking gpg agent config" "green"
  ln -sf ~/code/georgeenciu/dotfiles/utilities/gpg/gpg-agent.conf ~/.gnupg/
}
