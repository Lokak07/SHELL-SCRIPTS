#! /bin/bash

# rename a file

file_name="dummy4.txt"
new_file_name="dummy5.txt"

if [ -f "$file_name" ]; then

mv $file_name $new_file_name
echo"Operation complete. New file name is: '$new_file_name'."
else
echo "$file_name : file not found"
fi 