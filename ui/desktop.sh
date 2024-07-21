#!/bin/bash

configure_desktop() {
	echo_item "configuring the desktop" "green"
	gsettings set org.gnome.desktop.wm.preferences focus-new-windows 'smart'
	gsettings set org.gnome.desktop.wm.preferences focus-mode 'click'
}
