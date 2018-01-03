#!/bin/bash
echo "enter the name of the file: "
read file_name
if [ -e $file_name ]
then
	echo "$file_name found"
	read -p "which line would you like to print? " line
	sed -n "$line p" $file_name
else
	echo "$file_name not found"
fi

