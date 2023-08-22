#!/bin/bash

: ' TITLE: CPU USAGE MONITORING 
    AUTHOR: WAKEEL
    DATE: 21ST AUGUST, 2023
'

function mem_stats {
echo ".........................."
echo ".........MEMORY..........."
echo ".........................."
ps -eocomm,pmem | grep -E -v '(0.0)' 
} >> $output_file.txt