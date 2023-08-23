#!/bin/bash

: ' TITLE: MEMORY USAGE MONITORING USING TOP COMMAND 
    AUTHOR: WAKEEL
    DATE: 23ST AUGUST, 2023
'

function top_mem_stats {
echo ".........................."
echo ".........MEM TOP.........."
echo ".........................."
timeout 2 top -b | awk '{print $10,$12}' | awk '$10 > 0.0' 
} >> $output_file.txt 

function top_mem_stats_all {
echo ".........................."
echo ".........MEM TOP.........."
echo ".........................."
timeout 2 top -b | awk '{print $10,$12}' 
} >> $output_file.txt 