#!/bin/bash

: '
    NAME: WAKEEL
    SUBJECT: TO CREATE AN INSTANCE 
    DATE: 27-08-2023

'


read -p "AMI image id:" ami
read -p "count:" count
read -p "type:" type
read -p "key:" key
read -p "security group id:" sg
read -p "subnet id:" subnet


aws ec2 run-instances --image-id $ami --count $count --instance-type $type --key-name $key --security-group-ids $sg --subnet-id $subnet