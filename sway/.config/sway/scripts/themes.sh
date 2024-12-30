#!/bin/bash

# Specify the folder to search
base_folder="$HOME/Pictures/backgrounds/cattpuchin/"

# Debug: Ensure the base folder exists
if [ ! -d "$base_folder" ]; then
  notify-send "Error: Base folder does not exist. Please specify a base folder in ~/.config/sway/scripts/themes.sh line 4"
  exit 1
fi

# Find all subfolders and files
folders_and_files=$(find "$base_folder" -mindepth 1 -maxdepth 1 \( -type d -o -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" \) \))

# Create a mapping of names (folders and filenames) to full paths
declare -A item_map
while IFS= read -r item; do
  name=$(basename "$item")
  item_map["$name"]="$item"
done <<<"$folders_and_files"

#Show names in Rofi
selected_item=$(printf "%s\n" "${!item_map[@]}" | rofi -dmenu -i -p "Select image or folder")

# Check if a selection was made
if [ -n "$selected_item" ]; then
  selected_path="${item_map["$selected_item"]}"
  if [ -d "$selected_path" ]; then
    # If a folder was selected, randomly select an image from the folder
    selected_file=$(find "$selected_path" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" \) | shuf -n 1)
  else
    # If a file was selected, use it directly
    selected_file="$selected_path"
  fi

  # Check if a valid image file was selected
  if [ -n "$selected_file" ]; then
    # Use wal on the selected file
    ~/.local/bin/wal -i "$selected_file" -n --backend haishoku
    swaybg -i "$selected_file" -m fill
  else
    notify-send "No valid image found in the folder!" "Please select another folder or image."
  fi
fi
