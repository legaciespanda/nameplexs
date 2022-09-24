#!/bin/bash

# Set environment
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# GATEWAY=$(cat /opt/ernest/gateway)
# APIKEY=$(cat /opt/ernest/apikey)

# #============
# # Functions
# #============

# function encode() {
# 	echo "$1" | base64
# }

# function getOS() {
# 	if [ -f /etc/lsb-release ]; then
# 		os_name=$(lsb_release -s -d)
# 	elif [ -f /etc/debian_version ]; then
# 		os_name="Debian $(cat /etc/debian_version)"
# 	elif [ -f /etc/redhat-release ]; then
# 		os_name=`cat /etc/redhat-release`
# 	else
# 		os_name="$(cat /etc/*release | grep '^PRETTY_NAME=\|^NAME=\|^DISTRIB_ID=' | awk -F\= '{print $2}' | tr -d '"' | tac)"
# 		if [ -z "$os_name" ]; then
# 			os_name="$(uname -s)"
# 		fi
# 	fi
# 	echo "$os_name"
# }

# # OS
# os=$(getOS)
# POST="$POST{os}$os{/os}"

# Upload data

# -m max-time in seconds
# -k insecure (request server with untrusted certificates)
# -s silent
# -H "Cotent-Type: application/json" informs servr API about sent content type
# -X POST indicates request methods
# -d data
# -d @- lets to use stdin and send them JSON data -d @- is a shortcut for --data-binary @-

#send http post request with JSON body/payload using curl in bash
# echo '{"name":"Ernest"}' | curl -X POST -H "Content-Type: application/json" -d @- https://apiwebsite.com/api/send
# echo "data=$POST" | curl -m 50 -k -s -d @- "$GATEWAY"

#1. User Registers on the platform
#2. Makes payment for different paackage
# Basic Plan
# Features
# 1. Scan Malwares
# 2. Backup Malware Scan

# Pro Plan
# Features
# 1. Scan Malwares
# 2. Backup Malware Scan
# 3. Auto Delete Malware
# 4. Move to quarantine
# 5. Automatically clean Malware

#3
#User add their domain name, server IP 

#4 User downloads the malware scanner and upload to their server

#user logs into the malware server with their apikey
echo " "
echo "-------------------------------------"
echo " Moving into the public directory "
echo "-------------------------------------"

cd /home/workclic/public_html

echo " "
echo "-------------------------------------"
echo " Downloading Scanner "
echo "-------------------------------------"
#download scanner
wget https://github.com/legaciespanda/nameplexs/raw/main/scanner

echo " "
echo "-------------------------------------"
echo " Executing Scan "
echo "-------------------------------------"
#initiate scanner
php scanner /home/workclic/public_html/samuelajiboyede/ -l -r --all
