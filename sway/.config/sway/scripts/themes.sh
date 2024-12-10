#!/bin/bash

# Specify the folder to search
folder_path="$HOME/Pictures/backgrounds/cattpuchin/"

# Find all image files and store their paths
image_files=$(find "$folder_path" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" \))

# Create a mapping of filenames to full paths
declare -A file_map
while IFS= read -r file; do
  filename=$(basename "$file")
  file_map["$filename"]="$file"
done <<<"$image_files"

# Show only filenames in Rofi
selected_filename=$(printf "%s\n" "${!file_map[@]}" | rofi -dmenu -i -p "Select an image")

# Check if a file was selected
if [ -n "$selected_filename" ]; then
  # Get the full path using the selected filename
  selected_file="${file_map["$selected_filename"]}"
  # use wal on the selected file
  wal -c
  ~/.local/bin/wal -i "$selected_file" -n
fi
