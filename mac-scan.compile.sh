#!/bin/bash -x
gcc -o mac-scan mac-scan.c
chmod ug+s mac-scan
ls -hal mac-scan
