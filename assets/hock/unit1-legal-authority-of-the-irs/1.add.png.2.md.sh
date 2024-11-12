#!/bin/bash

# Get the directory path
directory="/home/mcc/websites/ea-part3/assets/hock/unit1-legal-authority-of-the-irs/"

# Create a new markdown file
markdown_file="1.output.md"

# Iterate over each file in the directory
for file in "$directory"/*; do
  if [[ -f "$file" ]]; then
    filename=$(basename "$file")
    markdown_line="<img src=\"/assets/hock/unit1-legal-authority-of-the-irs/$filename\" width=\"20%\" />\n"
    echo "$markdown_line" >> "$markdown_file"
  fi
done
