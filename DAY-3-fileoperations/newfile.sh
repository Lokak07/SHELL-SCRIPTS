#! /bin/bash

#Create a New File and Write Content

current_date=$(date +"%Y-%m-%d")
file_directory="/home/loka/DEVOPS-PROJECTS/SHELL_SCRIPTING/SHELL-SCRIPTS/DAY-3/log"

save_file="$file_directory/$current_date.txt"


echo "Save the second line to" >> "$save_file"
echo "Save the first line to" >> "$save_file"

echo "$(date)" >> "$save_file"


echo "file was saved to $save_file"

