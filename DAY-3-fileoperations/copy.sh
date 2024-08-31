#! /bin/bash


file_name="logfile.sh"
new_location="/home/loka/DEVOPS-PROJECTS/SHELL_SCRIPTING/SHELL-SCRIPTS/DAY-3-fileoperations/test"

if [ -f "$file_name" ]; then
cp $file_name $new_location
echo " '$file_name' copied to '$new_location' "
else
echo " '$file_name' not found"
fi 

