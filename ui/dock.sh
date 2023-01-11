#!/bin/bash

configure_dock() {
  echo_item "configuring the dock" "green"
  # MOVE TO BOTTOM AND DONT BE MAX WIDTH
  gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
  gsettings set org.gnome.shell.extensions.dash-to-dock dock-position LEFT

  # AUTO HIDE DOCK
  gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
  gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
  gsettings set org.gnome.shell.extensions.dash-to-dock intellihide true

  # SET APPLICATIONS IN DOCK
  gsettings set org.gnome.shell favorite-apps "['kitty.desktop', 'firefox_firefox.desktop', 'notion-snap_notion-snap.desktop', 'discord_discord.desktop', 'slack_slack.desktop', 'signal-desktop.desktop', 'spotify.desktop']"
}
