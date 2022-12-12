#!/bin/bash

install_fonts() {
  echo_item "installing fonts" "green"
  # mkdir -p ~/.config/fontconfig
  wget -O iosevka.zip https://github.com/be5invis/Iosevka/releases/download/v16.6.0/super-ttc-iosevka-16.6.0.zip
  wget -O hack.zip https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip
  sudo apt install -qq --yes fonts-materialdesignicons-webfont
  unzip iosevka.zip -d /usr/share/fonts
  unzip hack.zip -d /usr/share/fonts
  rm -f iosevka.zip 
  rm -f hack.zip 
  fc-cache -fv
  curl -sS https://webi.sh/vim-devicons | sh
  # ln -sf ~/code/georgeenciu/dotfiles/ui/fonts.conf ~/.config/fontconfig/fonts.conf
}
