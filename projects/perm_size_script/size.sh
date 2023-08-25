#!/bin/bash

: '
NAME = WAKEEL
SUBJECT = SCRIPT TO SEND EMIAL IF FILES ARE GREATER THEN 1GB SIZE
DATE = 25-08-2023

'

source email.sh
source create_file.sh


function size {
find . -size +1G 
} 

output=$(size)


if [[ -n $output ]]
then
    read -p "file_name:" file_name
    create_file
    size > $file_name.txt
    read -p "sender:" sender
    read -p "reciever:" reciever
    read -p "password:" password
    read -p "subject:" subject
    send_email $sender $reciever $password $subject $file_name.txt
else 
    echo "no danger"
fi

