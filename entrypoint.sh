#!/bin/bash

# update system
apt-get update
apt-get install -y wget
wget https://download2.rapid7.com/download/InsightVM/Rapid7Setup-Linux64.bin
chmod +x Rapid7Setup-Linux64.bin
#./Rapid7Setup-Linux64.bin -c  < connection.conf
#apt install -y python
#python create-se.py

#ip = curl -X GET 
