#!/bin/bash
for file in $(ls -d -1 _posts/*/*.md)
do
	if grep -Fq "filename: " $file
	then
       # code if found
        printf ""
	   # echo "File: $file already processed"
	else
	   	# code if not found
    	echo "Adding the line on file: $file"
        awk -v n=2 -v s="filename: $file" 'NR == n {print s} {print}' $file > tmp.txt
		mv tmp.txt $file
	fi
done
