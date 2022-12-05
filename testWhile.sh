#!/bin/bash

#while循环
#i=0
#sum=0
#while [ $i -le 100 ];
#do
#	sum=`expr ${i} + ${sum}`
#	i=`expr ${i} + 1`
#done
#echo ${sum}

#对文件系统的判断
i=1
cat /home/superzhang/shell/zcy.txt | while read l
#ls -al | while read line
do
	echo "${i}    ${l}"
	i=`expr ${i} + 1`
done
