#!/bin/bash 
### script must be called with SCREEN
H="/home/ubuntu"
if [ ! -f /home/ubuntu/parameters.txt ] ; then 
	sudo echo "${1}:${2}" > $H/parameters.txt
fi
export PATH=/usr/local/cuda-5.0/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-5.0/lib64:/usr/local/cuda-5.0/lib
$H/cudaminer -l 56x8,56x8 -C 1,1 --url=http://${1}:8332 --userpass=rogiservice.${2}:x
