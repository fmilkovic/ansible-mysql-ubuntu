#!/bin/bash

CHECK=$(/usr/bin/mysql -u haproxy -h $3 -P $4 -NB -e "SELECT @@global.read_only;")

if [ $CHECK -eq "0" ]; then
    exit 1
elif [ $CHECK -eq "1" ]; then
    exit 0
else
    exit 1
fi