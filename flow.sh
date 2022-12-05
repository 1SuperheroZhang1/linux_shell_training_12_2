#!/bin/bash

#二、流程控制
#if [ 4 -lt 2  ];
#then
#	echo "真"
#else
#	echo "假"
#fi

#if [ -z ""  ];
#then
#	echo "true"
#else
#	echo "false"
#fi

#temp="aaa"
#if [ ${temp} = "bbb" ];
#then
#	echo "真"
#else
#	echo "假"
#fi

#temp="helloworld"
#if [ ${temp} = "helloworld" -a 4 -gt 5 ];
#then
#	echo "真"
#else
#	echo "假"
#fi


:<<!

	-n:判断是否不为空(-n:not zero)
   	-z:判断是否为空 (-z:zero)
	-a:and,逻辑与(并且)
	-o:or,逻辑或(或者)
!
#shell判断字符串是否为空时，需要使用双引号来包裹被判断的变量
#其实是将原变量中的字面量进行二次赋值，否则可能出现字面量与判断标准不相符合的情况(是字面量值被当作引用)

#temp=""
#if [ -n  "${temp}" ];
#then
#       echo "真"
#else
#        echo "假"
#fi



#if [ -n "${JAVA_HOME}" -a 4 -gt 5 ];
#then
#	echo "真"
#else
#	echo "假"
#fi

# 字符串判断
#temp=""
#if [ "${temp}" != "aa" ];
#then
#	echo "true"
#else
#	echo "false"
#fi

#文件体系的判断
# -d:directory  判断文件夹是否存在 
# -f:file	判断文件是否存在
# -e:exist	判断是否存在文件或文件夹
if [ -f /home/superzhang/shell/zcy.txt ];
then
	cat zcy.txt
	java
else
	touch zcy.txt
fi
