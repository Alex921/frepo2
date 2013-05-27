#!/bin/sh


FPATH="/home/ubuntu/"

FILE_A="$FPATH/parameters.txt" 

IP_PARAM=$(cat $FILE_A | cut -d ':' -f1)
PASS_PARAM=$(cat $FILE_A | cut -d ':' -f2) 
DATE=$(date)
echo "$DATE	starting cudacminer.sh on startup" >> /home/ubuntu/log.txt 
sh $FPATH/startcuda.sh $IP_PARAM $PASS_PARAM &
exit 