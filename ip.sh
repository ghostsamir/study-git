#!/usr/bin/env bash
#
# author:xushiwei
# email:ghostsamir@163.com
# date:2019/06/17
# usage:ping ip


ip="10.0.111"
for i in `seq 2 254`
do
{
  ping -c1 $ip.$i &>/dev/null
  if [ $? -eq 0 ];then
     echo "{${ip}.${i}:online}" >> online.json 
  else
     echo "{${ip}.${i}:downline}" >> offline.json
  fi
}&
done
wait
echo "OK"
