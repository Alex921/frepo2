#!/bin/bash
PROG="minerd"
URL="137.117.129.145" # azure-west
PORT=8108
USER="growl"
PASS="tunafish911Z"
#THREADS="-t 8"
screen -dm ~/./$PROG -a scrypt-jane --url=${URL}:$PORT --userpass=${USER}:$PASS $THREADS
echo "screen -dm ~/./$PROG -a scrypt-jane --url=${URL}:$PORT --userpass=${USER}:$PASS "