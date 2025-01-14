#!/bin/bash

# Define the source and destination paths
SOURCE="$(pwd)/lazyvim/nvim"
DESTINATION="$HOME/.config/nvim"
rm -rf ~/.local/share/nvim
rm -rf ~/rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
rm -rf ~/.config/nvim
# List of directories to copy
CONFIG_DIRS=("nvim")

# Create the destination directory if it doesn't exist
mkdir -p "$DESTINATION"

cp -rf "$SOURCE/"* "$DESTINATION/"
