#!/bin/bash

# get The address the scan engine is hosted
ip =`curl -X GET https://api.ipify.org`

# pair the scan engine with console
curl -X POST -H "Content-Type: application/json" -d '{"address": $ip,"id": 6,"name": "Corporate Scan Engine 001","port": 40814}

