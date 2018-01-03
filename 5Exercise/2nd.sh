#!/bin/bash
echo "enter the name of the file: "
read file_name
if [ -e $file_name ]
then
	egrep -n "^.{$(wc -L < $file_name)}" $file_name | sed 's/:/ ->/'
else
	echo "$file_name not found"
fi


