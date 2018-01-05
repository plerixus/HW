#!/bin/bash
read -p "Enter year: " year
read -p "Enter month (digit I.E.: 01): " month
read -p "Enter day (I.E.: 01): " day
find . -type f -not -newerat $year-$month-$day
