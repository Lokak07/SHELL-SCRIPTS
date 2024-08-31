#! /bin/bash

#check file permissions

read -p "Enter the file name : " file_name

if [ -f "$file_name" ]; then
echo "File exists"
ls -l $file_name
else "$file_name does not exist"
fi