#!/bin/bash

: ' TITLE: CPU USAGE MONITORING 
    AUTHOR: WAKEEL
    DATE: 21ST AUGUST, 2023
'

function cpu_stats {
echo ".........................."
echo ".........CPU........."
echo ".........................."
ps -eocomm,pcpu | grep -E -v '(0.0)' 
} >> $output_file.txt