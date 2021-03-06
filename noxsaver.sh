#!/bin/bash

#####################
# Sleeper cell
# by Jeff Israel
# Licence: GPL
#
# usage: noxsaver TIME
# example: ./noxsaver 90m
#

echo "turning off xsceensaver and dpms"
killall xscreensaver
xset s off -dpms

echo "sleeping for $1..."
sleep $1

echo "back on :)"
# xset s on +dpms
xscreensaver -no-splash &

