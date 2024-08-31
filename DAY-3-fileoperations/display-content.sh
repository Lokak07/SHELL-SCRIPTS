#! /bin/bash

#Read and Display the Contents of a File

#read the directory name
read -p "Enter the directory location" directory

#read the file name
read -p "Enter the file name" file_name


file_path="$directory/$file_name"

#will check for file name in the mentioned directory if file exists will display the contents
if [ -f "$file_path" ]; then
echo "contents of '$file_path':"
cat "$file_path"
else
echo "file $file_path does not exist"
fi
