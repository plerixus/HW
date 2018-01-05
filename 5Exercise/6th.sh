#!/bin/bash

echo "Enter directory address "
read dir
echo ' '
find $dir -size 0 -delete

