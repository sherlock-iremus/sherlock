#!/bin/bash

input_folder="from"
output_folder="to"

mkdir -p "$output_folder"

for file in "$input_folder"/*; do
  if [[ -f "$file" ]]; then
    filename=$(basename -- "$file")
    name="${filename%.*}"
    magick "$file" "$output_folder/$name.png"
    echo "Converted $file to $output_folder/$name.png"
  fi
done
