# Sunimal Herath
# 16/02/2025
#
# Count the number of words in the provided file.
# User can provide the file name as an argument when executing the shell.
#
# e.g: ./word-count-one-file.sh /etc/os-release
#

#!/bin/bash

word_count=$(wc -w < $1)

echo "Number of words in the file, $1 is $word_count"
