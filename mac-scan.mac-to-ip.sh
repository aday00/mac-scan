#!/bin/bash

# TODO: cache MAC and IP, only nmap scan if MAC for IP has changed

# for specified MAC address, print IP address

mac_addr=$1
[[ -z "$mac_addr" ]] && exit 1

dir=$(dirname $0)
scan_to_table_filename=$dir/mac-scan.to-table.sh
flock $scan_to_table_filename -c $scan_to_table_filename | awk "/^$mac_addr/ {print \$2}"
