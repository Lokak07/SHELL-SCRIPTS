#! /bin/bash

#count number of words and lines in a file

 file_name="append.sh"

 if [ -f "$file_name" ]; then
 echo " '$file_name' File found"
 echo "Number of lines in the file:$(wc -l $file_name)" 
 echo "Number of words in the file: $(wc -w $file_name)"
 echo "Number of characters : $(wc -m $file_name)"
 else
 echo "file not found"
fi 