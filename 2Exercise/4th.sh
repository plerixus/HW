#!/bin/bash
echo "enter the name of the file: "
read file_name
if [ -e $file_name ]
then
        echo "$file_name found"
        read -p "Which line would you like to delete? " line
	echo "Deleting:"
        sed -n "$line p" $file_name
	sed -i "$line d" $file_name

else
        echo "$file_name not found"
fi


