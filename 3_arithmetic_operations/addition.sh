# Sunimal Herath
# 19/02/2025
#
# Arithmetic Operations - Addition & Substraction
# Get file names as arguments from the command line and determine the file total file size and the size difference
# 
# du => file size
# -b => bytes
#
# cut => removes sections
# -f  => fields
#  1  => 1st field

#!/bin/bash

f1_size=$(du -b $1 | cut -f1)
f2_size=$(du -b $2 | cut -f1)

echo "Total file size = $(($f1_size + $f2_size))"
echo "File size difference = $(($f2_size - $f1_size))"

