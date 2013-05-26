#!/bin/bash

FILE_A="~/parameters.txt" 

IP_PARAM=$(cat $FILE_A | cut -d ':' -f2)
PASS_PARAM=$(cat $FILE_A | cut -d ':' -f3) 
DATE=$(date)
echo "$DATE	starting cudacminer.sh on startup" >> ~/log.txt 
sh ~/startcuda.sh $IP_PARAM $PASS_PARAM &
exit 