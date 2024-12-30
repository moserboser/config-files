#!/bin/bash

CHOICE=$(echo -e "Cancel\nScreensave\nLogout\nReboot\nShutdown\nHybernate" | rofi -dmenu -p "Choose action:")

case "$CHOICE" in
Logout)
  swaymsg exit
  ;;
Screensave)
  swaylock -n -e -i ~/Pictures/backgrounds/nordic_wallpapers/ign_unsplash46.png
  ;;
Hybernate)
  systemctl hybernate
  ;;
Reboot)
  systemctl reboot
  ;;
Shutdown)
  systemctl poweroff
  ;;
*)
  # Do nothing
  ;;
esac
