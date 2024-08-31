#! /bin/bash


#Append Content to an Existing File
file_name="logfile.sh"

if [ -f "$file_name" ]; then
echo "add this line to the file " >> "$file_name"
echo "add this 3line to the file " >> "$file_name"
echo "appended to :" $file_name
else
echo "$file_name not found"
fi