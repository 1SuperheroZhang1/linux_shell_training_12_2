#!/bin/bash

#方式1
#for i in 1 2 "ass" 4 5; 
#do
#	echo $i
#done

#方式2
#for((i=0; i<10; i=i+1))
#do
#	echo $i
#done

#total=8;
#for((i=0;i<total;i++))
#do
#	echo $i
#done


#对字符串的遍历拿数组执行，对数字的遍历拿for循环执行

#对文件系统的遍历
#for f in *.txt;  # *代表当前文件夹下的所有文件,通配符【*】
#do
#	echo $f
#done


arr=(1 2 6 3 2 5 8 9)
#echo ${#arr[*]}
#echo ${arr[@]}
length=${#arr[*]}
#冒泡排序
for ((i=0;i<length;i++))
do
	for ((j=i;j<length-i-1;j++))
	do
		if [ ${arr[$i]} -gt ${arr[$j]} ];
		then
			tmp=${arr[$i]}
			arr[$i]=${arr[$j]}
			arr[$j]=$tmp
		fi
	done
done

echo ${arr[*]}


#for item in ${arr[*]};
#do
#	echo  "这一次遍历打印出来的是$item"
#done
