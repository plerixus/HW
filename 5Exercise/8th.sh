#!/bin/bash

echo "Enter directory address "
read dir
echo ' '
echo "select bytes (min size)"
read size
echo ' '
find $dir -type f -size +$size"c"

