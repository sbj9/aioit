#!/bin/bash
sum=0
while read number
do
	if (( $number % 3 == 0 )); then
		sum=$((sum + number))
	fi
done < 1.txt
echo "Zbroj brojeva djeljivih s 3 je: $sum"
