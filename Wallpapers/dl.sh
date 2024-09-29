#!/bin/bash

# Base URL and file extension
base_url="https://github.com/Cybersnake223/Hypr/blob/main/Wallpapers/"
file_extension=".png"
max_images=26

# Iterate through image numbers
for ((i=1; i<=max_images; i++)); do
  # Create image number string (e.g., 1, 2, ..., 26)
  num=$(printf "%d" $i)

  # Form the image URL
  image_url="${base_url}Img-${num}.png?raw=true"

  # Form the output file name
  output_file="img${num}.png"

  # Download the image
  wget -O "$output_file" "$image_url"

  # Optional: Add a small delay to avoid overwhelming the server
  sleep 1
done

