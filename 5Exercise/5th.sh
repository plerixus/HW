#!/bin/bash

echo "Enter directory address "
read dir
echo ' '
find $dir -empty -printf '%p : %a \n' -delete
