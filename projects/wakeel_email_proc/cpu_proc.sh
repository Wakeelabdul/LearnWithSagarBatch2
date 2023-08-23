#!/bin/bash

: ' TITLE: CPU USAGE MONITORING USING /PROC/CPUINFO COMMAND 
    AUTHOR: WAKEEL
    DATE: 23ST AUGUST, 2023
'

function proc_cpu_stats {
echo ".........................."
echo ".........CPU PROC.........."
echo ".........................."
cat /proc/cpuinfo 
} >> $output_file.txt 