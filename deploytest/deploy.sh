#!/bin/bash

javac Main.java

testcase=()
result=()
i=0
cat result.txt | while read l
do
	result[$i]=$l
	i=`expr ${i} + 1`
 	if [ $i -eq 5 ]; then
		#echo ${result[*]}
		cat testCase.txt | while read h
		do
			testcase[$j]=$h
			j=`expr ${j} + 1`
			if [ $j -eq 10 ];then
				#echo ${result[*]}
				#echo ${testcase[*]}
				length=${#result[*]}
				#echo ${length}
				for((m=0;m<length;m++))
				do
					#echo ${result[$m]}
					#法1：
					#first=`expr $m + $m`
					#second=`expr $first + 1`
					#echo ${testcase[$first]}
					#echo ${testcase[$second]}
					#法2：
					#echo ${testcase[`expr $m + $m + 1`]}
					#echo ${testcase[`expr $m + $m`]}					
					first=`expr $m + $m`
					second=`expr $first + 1`
					java Main $first $second | while read r
					do
						if [ ${result[$m]} = $r ];then
							echo "通过第$m个用例"
						else
							echo "第$m个用例没有通过"
						fi
					done
				done
			fi
		done
	fi	
done

