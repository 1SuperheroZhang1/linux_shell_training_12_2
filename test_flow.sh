#!/bin/bash

if [ -f /home/superzhang/Desktop/zcy.txt ];then
	cd /home/superzhang/Desktop
	cat zcy.txt
elif [ -d /home/superzhang/Desktop ];then
	cd /home/superzhang/Desktop
	touch zcy.txt
else 
	mkdir /home/superzhang/Desktop
	touch zcy.txt
fi
