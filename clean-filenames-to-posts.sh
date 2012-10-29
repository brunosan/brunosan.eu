#!/bin/bash
for file in $(ls -d -1 _posts/*/*.md)
do
	if grep -Fq "filename: " $file
	then
       # code if found
        
		echo "Cleaning the line on file: $file"
        sed '/filename: /d'  $file > tmp.txt
		mv tmp.txt $file
	   # echo "File: $file already processed"
	else
	   	# code if not found
    	printf ""
	fi
done
