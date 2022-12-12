#!/bin/bash

install_mysql_workbench() {
  if exists "mysql-workbench"; then
    echo_item "mysql workbench is already installed" "green"
  else
    echo_item "installing mysql workbench" "green"
    wget -O mysql_apt.deb https://dev.mysql.com/get/mysql-apt-config_0.8.24-1_all.deb
    sudo apt install -qq --yes ./mysql_apt.deb
    sudo apt update
    sudo apt -qq --yes install mysql-workbench-community
    rm -f mysql_apt.deb
  fi
}
