#!/bin/bash

install_php() {
	install_bineries
	install_composer
}

install_bineries() {
	if exists "php"; then
		echo_item "php is already installed" "green"
	else
		echo_item "installing php" "green"
		sudo apt install -qq --yes php
		sudo apt install -qq --yes php-curl php-dom php-zip
	fi
}

install_composer() {
	if exists "composer"; then
		echo_item "php:composer is already installed" "green"
	else
		echo_item "installing php:composer" "green"
		php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
		php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
		php composer-setup.php
		php -r "unlink('composer-setup.php');"
		sudo mv composer.phar /usr/local/bin/composer
	fi
}

instll_phpenv() {
	if exists "phpenv"; then
		echo_item "phpenv is already installed" "green"
	else
		echo_item "installing phpenv" "green"
		git clone git@github.com:phpenv/phpenv.git ~/.phpenv
	fi
}
