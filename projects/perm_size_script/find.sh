#!/bin/bash

: '
NAME = WAKEEL
SUBJECT = SCRIPT TO TAKE USER INPUT OF PERMISSION AND FIND THAT PERMISSION FILE
DATE = 25-08-2023

'
#command to get input from user of what permisson files looking for
read -p "files with the permission:" permission
echo $permission

#command to find that files
find ~ -perm $permission
