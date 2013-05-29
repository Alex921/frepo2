#!/bin/bash 
### script must be called with SCREEN

if [ ! -f /home/ubuntu/parameters.txt ] ; then 
	echo "${1};${2}" > /home/ubuntu/parameters.txt
fi

export PATH=/usr/local/cuda-5.0/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-5.0/lib64:/usr/local/cuda-5.0/lib
home/ubuntu/cudaminer -l 56x8,56x8 -C 1,1 --url=http://${1}:8332 --userpass=growl.${2}:x
