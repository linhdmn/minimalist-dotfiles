#!/bin/bash

SOURCE="./minimalist-dotfiles/nvim"
DESTINATION="$HOME/.config/nvim"

# Create the destination directory if it doesn't exist
mkdir -p "$DESTINATION"

# Copy everything from SOURCE to DESTINATION, overwriting existing files
cp -rf "$SOURCE/"* "$DESTINATION/"
