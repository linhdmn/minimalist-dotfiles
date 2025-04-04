#!/bin/bash

# Get the disk usage for the root filesystem ("/")
disk_usage=$(df -h / | awk 'NR==2 {print $4, $2}')

# Parse the output to extract the available and total space in GB
free_space=$(echo $disk_usage | awk '{print $1}')
total_space=$(echo $disk_usage | awk '{print $2}')

# Print the formatted output
echo "${free_space} / ${total_space}"
