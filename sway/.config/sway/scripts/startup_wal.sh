#!/bin/bash

# script to perform actions based on the time of day

# Get the current hour in 24-hour format
current_hour=$(date +"%H")

# Execute commands based on the time of day
if [ "$current_hour" -ge 6 ] && [ "$current_hour" -lt 12 ]; then
  ~/.local/bin/wal -c
  ~/.local/bin/wal -i "~/Pictures/backgrounds/cattpuchin/gameboy_moca.png" -n
else
  [ "$current_hour" -ge 20 ] && [ "$current_hour" -lt 5 ]
  ~/.local/bin/wal -c
  ~/.local/bin/wal -i "~/Pictures/backgrounds/cattpuchin/city_night_moca.png" -n
fi
