#!/bin/bash

: ' TITLE: CPU USAGE MONITORING USING /PROC/MEMINFO COMMAND 
    AUTHOR: WAKEEL
    DATE: 23ST AUGUST, 2023
'

function proc_mem_stats {
echo ".........................."
echo ".........MEM PROC.........."
echo ".........................."
cat /proc/meminfo 
} >> $output_file.txt 