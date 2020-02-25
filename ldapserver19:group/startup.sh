#! /bin/bash
bash /opt/docker/install.sh
ulimit -n 1024
/sbin/slapd 
a=1
while [ $a -eq 1 ]
do
  a=1	
done

