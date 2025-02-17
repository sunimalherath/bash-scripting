# Sunimal Herath
# 17/02/2025
#
# Count the number of words in the provided files. 
# As previous example, users can provide the file names as arguments with spaces in between them. 
#
# e.g: ./word-count-three-files.sh /etc/os-release /etc/group /etc/hosts

#!/bin/bash

file1_word_count=$(wc -w < $1)
file2_word_count=$(wc -w < $2)
file3_word_count=$(wc -w < $3)

echo "Number of words in the file, $1 is $file1_word_count"
echo "Number of words in the file, $2 is $file2_word_count"
echo "Number of words in the file, $3 is $file3_word_count"
