#!/bin/bash

echo "Enter directory address "
read dir
echo ' '
find $dir -perm 0444

