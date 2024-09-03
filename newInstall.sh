#!/bin/bash

# This is Mikey's update shell script for Debian Distributions for Linux
# Once downloaded, change user permissions to include execution
# Command line prompt is sudo ./.newInstall 
# Enter password when prompted


# Check for root or sudo privileges
if [[ ! $(id -u) -eq 0 ]]; then
    echo "This script requires root or sudo privileges."
    exit 1
fi

sudo apt update
sudo apt -y full-upgrade
sudo apt -y autoremove
sudo apt -y install build-essential
