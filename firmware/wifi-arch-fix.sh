#!/usr/bin/bash

# this driver(s) works for debian based OS as well
# on debain based use:
# sudo apt-get update
# sudo apt-get install broadcom-wl-dkms

#install pacakge using pacman from community repo
sudo pacman -Syu broadcom-wl-dkms

# reload module without restart
sudo  modprobe wl