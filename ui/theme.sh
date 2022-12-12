#!/bin/bash

install_theme() {
  THEMES_DIR=/usr/share/themes
  THEME_DIR=/usr/share/themes/Nordic
  mkdir -p $THEMES_DIR
  if [[ ! -d "$THEME_DIR" ]]; then
    echo_item "installing theme" "green"
    sudo git clone --quiet https://github.com/arcticicestudio/nord.git /usr/share/themes/Nordic
  else
    echo_item "theme is already installed" "green"
  fi
}

configure_theme() {
  echo_item "configuring theme" "green"
  gsettings set org.gnome.desktop.interface gtk-theme "Nordic"
  gsettings set org.gnome.desktop.wm.preferences theme "Nordic"
}
