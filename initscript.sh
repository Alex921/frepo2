#!/bin/bash
H="/home/ubuntu"
sudo apt-get install -y build-essential libcurl4-openssl-dev automake 
git clone https://github.com/ali1234/cpuminer.git
cd $H/cpuminer
./autogen.sh
./configure CFLAGS=-O3
make
cp minerd $H/minerd 