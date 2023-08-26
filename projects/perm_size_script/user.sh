#!/bin/bash

: '
NAME = WAKEEL
SUBJECT = SCRIPT TO TAKE USER INPUT OF USER AND FIND THAT PERMISSION FILE
DATE = 25-08-2023

'

function user {
    find . -user $user_name -type f 
}

read -p "Enter the user name:" user_name
user 