#!/bin/bash

# Define the source and destination paths
SOURCE="$(pwd)/idol-nvim"
DESTINATION="$HOME/.config/nvim"
BACKUP_DIR="$HOME/.config/nvim.bk_$(date +'%Y%m%d_%H%M%S')"

# Backup the existing nvim configuration with a timestamp
mv "$HOME/.config/nvim" "$BACKUP_DIR"

# Remove old nvim-related files
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim

# Create the destination directory if it doesn't exist
mkdir -p "$DESTINATION"

# Copy new configuration files
cp -rf "$SOURCE/"* "$DESTINATION/"

echo "Neovim configuration updated. Backup saved at: $BACKUP_DIR"

