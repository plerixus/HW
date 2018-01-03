#!/bin/bash
echo "Enter the name of the 1st file: "
read file_name1
if [ -e $file_name1 ]
then
	echo "$file_name1 found"
	echo "Enter the name of the 2nd file: "
	read file_name2
	if [ -e $file_name2 ]
	then
		echo "$file_name2 found"
		if [ "$(wc -l < $file_name1)" -gt "$(wc -l < $file_name2)" ]
		then
			echo "$file_name1 has more lines ( ( $(wc -l < $file_name1) )"
		elif [ "$(wc -l < $file_name1)" -lt "$(wc -l < $file_name2)" ]
		then
			echo "$file_name2 has more lines ( $(wc -l < $file_name2) )"
		else
			echo "both files have equal ammount of lines"
		fi
	else
		echo "$file_name2 not found"
	fi


else
	echo "$file_name1 not found"
fi

