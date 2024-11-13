#!/bin/bash
# Define the flag file location
FLAG_FILE="/tmp/i3_floating_state"

# Get the name of the currently focused workspace
workspace=$(i3-msg -t get_workspaces | jq -r '.[] | select(.focused==true).name')

# Check if any window in the current workspace is currently floating
is_any_floating=$(i3-msg -t get_tree | jq -r --arg workspace "$workspace" '.nodes[].nodes[] | select(.name==$workspace) | .nodes[] | select(.floating=="user_on")' | wc -l)

# If any window is floating, disable floating for all windows and remove the flag file
if [ "$is_any_floating" -gt 0 ]; then
    i3-msg "[workspace=$workspace] floating disable"
    rm -f "$FLAG_FILE"
else
    # If no window is floating, enable floating for all windows and create a flag file
    i3-msg "[workspace=$workspace] floating enable"
    echo "$workspace" > "$FLAG_FILE"
fi

