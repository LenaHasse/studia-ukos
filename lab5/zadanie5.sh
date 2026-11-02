#!/usr/bin/bash
data=$(date +%Y-%m-%d)
top -b -n 1  > log_$data.txt
