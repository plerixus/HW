#!/bin/bash
echo "enter the name of the file: "
read file_name
if [ -e $file_name ]
then
        echo "$file_name found"
        read -p "From which line would you like to start? " line1
	read -p "Where would you like to stop? " line2
        sed -n "$line1 , $line2 p" $file_name
else
        echo "$file_name not found"
fi


