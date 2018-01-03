#! /bin/bash
# cia praleidziu tikrinima ar direktoriju adresai teisingi kad nebutu taip kaip priestai buvusiam darbe
echo "Enter first directory address "
read dir1
echo "Enter second directory address "
read dir2

echo "dir1 - $(ls $dir1 | wc -l)"
echo "dir2 - $(ls $dir2 | wc -l)"

if [ "$(ls $dir1 | wc -l)" -gt "$(ls $dir2 | wc -l)" ]
then
	echo "dir 1 has more files"
elif [ "$(ls $dir1 | wc -l)" -lt "$(ls $dir2 | wc -l)" ]
then
	echo "dir 2 has more files"
else
	echo "both dirs have equal ammount of files"
fi


