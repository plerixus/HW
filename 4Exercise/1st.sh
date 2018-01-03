#!/bin/bash
echo "$(ls -d */ -l)"
echo "Largest File: "
ls -S | head -n 1
#find . -maxdepth 1 -printf '%s %p\n'|sort -nr| head -n 1
echo "Dir with most files"
find . -xdev -type f | cut -d "/" -f 2 | sort | uniq -c | sort -n | tail -n1 | cut -d ' ' -f8

