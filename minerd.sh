#!/bin/bash
H="/home/ubuntu"
PROG="minerd"
URL="137.117.129.145" # azure-eu
PORT="8108"
USER="growl"
PASS="tunafish911Z"
THREADS="-t 14"
$H/$PROG -a scrypt-jane --url=${URL}:$PORT --userpass=${USER}:$PASS $THREADS