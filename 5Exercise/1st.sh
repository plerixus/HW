#!/bin/bash
echo "enter the name of the file: "
read file_name
if [ -e $file_name ]
then
	
	sed '/^$/d' $file_name > output.txt
	#to remove spaces as well sed '/^$/d'; '/^\s*$/d' $file_name > output.txt
	echo "empty lines have been removed"

else
	echo "$file_name not found"
fi


