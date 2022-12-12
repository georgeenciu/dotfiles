#!/bin/bash

configure_eslint() {
  echo_item "symlinking global eslint config" "green"
  ln -sf ~/code/georgeenciu/dotfiles/utilities/eslint/eslintrc ~/.eslintrc
}
