#!/bin/bash

: ' TITLE: CPU USAGE MONITORING USING TOP COMMAND 
    AUTHOR: WAKEEL
    DATE: 23ST AUGUST, 2023
'

function top_cpu_stats {
echo ".........................."
echo ".........CPU TOP.........."
echo ".........................."
timeout 2 top -b | awk '{print $9,$12}' | awk '$9 > 0.0' 
} >> $output_file.txt 

function top_cpu_stats_all {
echo ".........................."
echo ".........CPU TOP.........."
echo ".........................."
timeout 2 top -b | awk '{print $9,$12}' 
} >> $output_file.txt 