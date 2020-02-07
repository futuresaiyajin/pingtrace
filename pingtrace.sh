#!/bin/sh

echo "Please enter network adress:"
read NETWORK_ADDRESS
OUTPUT_DIR=~/Downloads

ping -c 4 $NETWORK_ADDRESS | tee $OUTPUT_DIR/ping_$NETWORK_ADDRESS.txt && traceroute $NETWORK_ADDRESS | tee $OUTPUT_DIR/tracert_$NETWORK_ADDRESS.txt