#!/bin/bash
echo  "Please enter the directory"
read dir
len=$(tr -dc '/' <<< "${dir}"| wc -c)
#assuming that dir is written like this /home/elijas/Documents/ , else +1 is pontless
echo "cut distance is $((len+1))"
find $dir -xdev -type f | cut -d "/" -f "$((len+1))" | sort | uniq -c | sort -n | tail -n1
