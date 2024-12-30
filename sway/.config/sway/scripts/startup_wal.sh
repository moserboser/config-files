#!/bin/bash

# script to perform actions based on the time of day

# Get the current hour in 24-hour format
current_hour=$(date +"%H")

# Execute commands based on the time of day
if [ "$current_hour" -ge 6 ] && [ "$current_hour" -lt 12 ]; then
  notify-send "good morning or good afternoon"
else
  [ "$current_hour" -ge 20 ] && [ "$current_hour" -lt 5 ]
  notify-send "good evening"
fi
