#!/bin/bash
# Get current workspace
workspace=$(i3-msg -t get_workspaces | jq -r '.[] | select(.focused).name')

# Add or remove floating rules for the workspace
if grep -q "$workspace" ~/.config/i3/floating_workspaces; then
    sed -i "/$workspace/d" ~/.config/i3/floating_workspaces
    i3-msg "floating disable"
else
    echo "$workspace" >> ~/.config/i3/floating_workspaces
    i3-msg "floating enable"
fi

