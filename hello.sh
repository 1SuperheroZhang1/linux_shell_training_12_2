

#一、shell编程
#1.shell编程中最基础的输出内容
echo "hello world"

#2.shell编程中的变量和基本表达式

:<<!
	1.shell编程中的空格不能随便使用
	2.shell编程中指代变量值的符号是$
!
i=56
#echo ${i}
abc="i don't want see you anymore"
#在表达式中，当需要使用符号，要在符号中间加入空格
n=`expr ${i} + 5`
echo ${n}

#定义数组
arr=("a" b c)
# #arr[*]表示求数组的长度 arr[*]表示输出数组中的每个元素值
echo ${#arr[*]}

#修改数组中元素的内容
arr[0]="hello"
echo ${arr}
