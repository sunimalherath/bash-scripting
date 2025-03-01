# Sunimal Herath
# 01/03/2025
# 
# Pass the path of the directory (i.e: /etc ) and for loop counts the number of files.

count=0

for file in $1/*; do
	((count++))
done

echo "Number of files and directories in $1 is $count"
