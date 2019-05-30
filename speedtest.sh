#!/bin/bash
# Using https://github.com/sivel/speedtest-cli.git in shell
# Check for speedtest folder
SDIR="/home/speedtest-cli/"

if [ -d $SDIR ]
then
    echo "Folder exist, proceed with test"
    # Run test to server 5921 (Cybersmart Cape Town)
    cd /home/speedtest-cli/ && ./speedtest.py --server 5921
else
    echo "Install git & get speedtest from git and run test"
    # Install git if not install already
    yes | apt-get install git
    # Clone git repo to local machine
    git clone https://github.com/sivel/speedtest-cli.git /home/speedtest-cli
    sleep 1
    # Run test to server 5921 (Cybersmart Cape Town)
    cd /home/speedtest-cli/ && ./speedtest.py --server 5921
fi


