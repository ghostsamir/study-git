#!/usr/bin/env bash
#
# author:xushiwei 
# email:ghostsamir@163.com
# 
# 


netip='192.168.161'
for hostip in $(seq 2 254)
do
  {
    ping -c1 ${netip}.${hostip} &>/dev/null
    if [ $? -eq 0 ];then
      echo '{${netip}.${hostip}:online}' >>OnlineIP.json
    else
      echo '{${netip}.${hostip}:offline}' >>OfflineIP.json
    fi
  }&
done
wait
echo 'Complete OK.'
