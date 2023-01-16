#!/bin/bash

install_fonts() {
  
  sudo apt install -qq --yes fonts-materialdesignicons-webfont

  install_hack
  install_iosevka
  install_devicons
}

install_hack() {
  font_count=$(fc-list | grep -i Hack | wc -l)
  if [ "$font_count" -gt "1" ]
    then 
    echo_item "iosevka font are already installed" "green"
  else
    echo_item "installing iosevka font" "green"
    wget -O iosevka.zip https://github.com/be5invis/Iosevka/releases/download/v16.6.0/super-ttc-iosevka-16.6.0.zip
    sudo apt install -qq --yes fonts-materialdesignicons-webfont
    sudo unzip iosevka.zip -d /usr/share/fonts
    rm -f iosevka.zip 
    fc-cache -fv
  fi
}
install_iosevka() {
  font_count=$(fc-list | grep -i Iosevka | wc -l)
  if [ "$font_count" -gt "1" ]
    then 
    echo_item "hack font are already installed" "green"
  else
    echo_item "installing hack font" "green"
    wget -O hack.zip https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip
    sudo apt install -qq --yes fonts-materialdesignicons-webfont
    sudo unzip hack.zip -d /usr/share/fonts
    rm -f hack.zip 
    fc-cache -fv
  fi
}

install_devicons() {
  if [[ -d "/home/george/.vim/pack/plugins/start/devicons.vim" ]]
  then
    echo_item "devicons are installed" "green"
  else
    curl -sS https://webi.sh/vim-devicons | sh
  fi
}
