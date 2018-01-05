#!/bin/bash

find /home/elijas -xdev -type f | cut -d "/" -f 4 | sort | uniq -c | sort -n | tail -n1
