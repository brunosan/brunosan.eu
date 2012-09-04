#!/bin/bash
cd _posts
for category in $(ls -d *)
do
cd $category
echo $category
pwd 
for file in $(ls *.md)
do
	if grep -Fq "category: " $file
	then
       # code if found
        printf ""
	   # echo "File: $file already processed"
	else
	   	# code if not found
    	echo "Adding the line on file: $file"
        awk -v n=2 -v s="category: $category" 'NR == n {print s} {print}' $file > tmp.txt
		mv tmp.txt $file
	fi
done
cd ..
done
