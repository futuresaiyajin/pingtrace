#!/bin/sh

echo "Please enter network adress:"
read network_address
output_dir=~/Downloads

ping -c 4 $network_address | tee $output_dir/ping_$network_address.txt && traceroute $network_address | tee $output_dir/tracert_$network_address.txt