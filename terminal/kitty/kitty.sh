#!/bin/bash

install_kitty() {
  if exists "kitty"; then
    echo_item "kitty is already installed" "green"
  else
    echo_item "installing kitty" "green"
    curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

    ln -s ~/.local/kitty.app/bin/kitty ~/.local/bin/
    cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
    cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/

    sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
    sed -i "s|Exec=kitty|Exec=/home/$USER/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop	sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty.desktop
  fi
}

configure_kitty() {
  echo_item "symlinking kitty config" "green"
  mkdir -p ~/.config/kitty
  mkdir -p ~/.config/kitty/themes
	ln -sf ~/code/georgeenciu/dotfiles/terminal/kitty/macchiato.conf ~/.config/kitty/themes/macchiato.conf
	ln -sf ~/code/georgeenciu/dotfiles/terminal/kitty/macchiato.conf ~/.config/kitty/current-theme.conf
  ln -sf ~/code/georgeenciu/dotfiles/terminal/kitty/kitty.conf ~/.config/kitty/kitty.conf
}
