#!/bin/bash

# get The address the scan engine is hosted
ip =`curl -X GET https://api.ipify.org`

# pair the scan engine with console
curl -k -X POST -H "Content-Type: application/json" -d '{"address": $ip,"id": 6,"name": "Corporate Scan Engine 001","port": 40814}' https://console-ip:3780/api/3/scan_engines
