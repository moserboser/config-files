#!/bin/bash

CHOICE=$(echo -e "Gameboy\nUnsplash\nCity\nNight" | rofi -dmenu -p "Choose action:")

case "$CHOICE" in
Gameboy)
  ~/.local/bin/wal -i $HOME/Pictures/backgrounds/cattpuchin/gameboy_moca.png -n
  swaymsg reload
  ;;
Unsplash)
  ~/.local/bin/wal -i $HOME/Pictures/backgrounds/nordic_wallpapers/ign_unsplash46.png -n
  swaymsg reload
  ;;
City)
  ~/.local/bin/wal -i $HOME/Pictures/backgrounds/cattpuchin/street_blues_moccha.png -n
  swaymsg reload
  ;;
Night)
  ~/.local/bin/wal -i $HOME/Pictures/backgrounds/cattpuchin/city_night_moca.png -n
  swaymsg reload
  ;;
*)
  # Do nothing
  ;;
esac
