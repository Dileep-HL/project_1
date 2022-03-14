#!/bin/bash
services="sshd jenkins tomcat"
for i in $services
do
	ps -C $i
	if [ $? -ne 0 ]
	then
		echo "$i is stopped" | mail -s "Service Stopped" dileep.288@gmail.com
	fi
done

