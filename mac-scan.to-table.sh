#!/bin/bash

# builds a table or MAC and IP addresses from mac-scan, which runs nmap as setuid

# scan 192.168.1.* IPs
dir=$(dirname $0)
scan_filename=$dir/mac-scan
[[ ! -f "$scan_filename" ]] && exit 1
$scan_filename >& /dev/null

# get MAC addresses
arp_outfile=$dir/mac-scan.out
/usr/sbin/arp -n | awk '/:/ {print $3 " " $1}' | tee $arp_outfile
