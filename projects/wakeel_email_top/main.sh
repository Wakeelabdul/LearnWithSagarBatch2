#!/bin/bash



echo $HOSTNAME
echo $USER
source cpu_usage.sh 
source memory_usage.sh
source create_file.sh
source email.sh
source top_cpu.sh
source top_mem.sh


count=1
while [[ $count -gt 0 ]]
do
echo "  
        1. cpu
        2. memory
        3. all 
        4. none 
    " 
read -p "Enter your choice:" choice
echo $choice
read -rp "Enter output file name:" output_file
create_file 
check_file


case $choice in 
    1|cpu) top_cpu_stats_all 
        ;;
    2|memory) top_mem_stats_all 
        ;;
    3|all) top_cpu_stats_all 
            top_mem_stats_all 
        ;;
    4|none)
        ;;
    *)
        echo "plzz enter a valid value"
        exit 1
esac
count=$((count-1))
echo $count
done

check_file
cupsfilter $output_file.txt > $output_file.pdf
check_file

##Email
read -rp "Enter sender email:" sender
echo $sender
read -rp "Enter reciever email:" reciever
read -rp "Enter password:" password
read -rp "Enter subject:" subject

send_email $sender $reciever $password $subject $output_file.pdf

remove_file 
check_file



: 'if [[ $choice == cpu ]]
then 
    cpu_stats
elif [[ $choice = memory ]]
then    
    mem_stats
else 
    echo "error"
fi 
'
