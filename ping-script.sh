#!/bin/bash

hosts="/home/ovi/desktop/myiplist"

for ip in $(cat $hosts)
do
ping -c1 $ip &> /dev/null
	if [ $? -eq 0  ]
        then
        echo  $ip is Ok! The host is reachable
        else
        echo Oops! The host $ip is not reachable
        fi
done

