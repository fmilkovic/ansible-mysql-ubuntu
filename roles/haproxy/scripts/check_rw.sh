#!/bin/bash

exit $(/usr/bin/mysql -u haproxy -h $3 -P $4 -NB -e "SELECT @@global.read_only;")