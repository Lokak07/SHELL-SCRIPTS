#! /bin/bash

#script to delete a file


read -p "Enter the directory:" directory
read -p "Enter the file name:" file_name

delete_file="$directory/$file_name"

if [ -f "$delete_file" ]; then
rm $delete_file
echo " '$delete_file' removed"
else
echo " '$file_name' file not found "
fi