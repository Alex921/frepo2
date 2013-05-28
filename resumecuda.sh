#!/bin/sh
PARAM_FILE="/home/ubuntu/parameters.txt" 
IP_PARAM=$(cat $PARAM_FILE | cut -d ':' -f1)
PASS_PARAM=$(cat $PARAM_FILE | cut -d ':' -f2) 
DATE=$(date)
echo "$DATE	starting cudacminer.sh on startup" >> /home/ubuntu/log.txt 
bash home/ubuntu/frepo2/startcuda.sh $IP_PARAM $PASS_PARAM &
exit 