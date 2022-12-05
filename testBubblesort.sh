#!/bin/bash

arr=(1 2 4 3 2 5 8 9 10 98)
size=${#arr[*]}

for((i=0;i<size;i++));
do
	for((j=i;j<size;j++))
	do
		if [ ${arr[$i]} -gt ${arr[$j]} ];then
			TMP=${arr[$i]}
			arr[$i]="${arr[$j]}"
			arr[$j]="${TMP}"
		fi
	done
done

echo ${arr[*]}
