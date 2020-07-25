#!/bin/bash
#check ip up or down
echo "Please enter a ip : (*.*.*.*) "
read x
ping -c 2 -w 1 $x &> /dev/null
if [ $? -eq 0 ];then
  echo "$x" is up
else
  echo "$x" is down
fi
