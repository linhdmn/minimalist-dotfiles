#!/bin/bash

# Define the source and destination paths
SOURCE="$HOME/.config"
DESTINATION="$(pwd)/lazyvim"

# List of directories to copy
CONFIG_DIRS=("nvim")

# Create the destination directory if it doesn't exist
mkdir -p "$DESTINATION"

# Loop through each directory and copy if it exists
for DIR in "${CONFIG_DIRS[@]}"; do
  if [ -d "$SOURCE/$DIR" ]; then
    echo "Copying $DIR to $DESTINATION"
    # Use rsync with --exclude to ignore .git folders
    rsync -av --exclude='.git' "$SOURCE/$DIR" "$DESTINATION/"
  else
    echo "Directory $DIR does not exist in $SOURCE. Skipping..."
  fi
done
echo "Selected configuration files have been copied to $DESTINATION."
