#!/bin/bash

#int-
ssh -i /home/ubuntu/new.pem -o StrictHostKeyChecking=no ubuntu@ec2-43-205-112-61.ap-south-1.compute.amazonaws.com 'sudo shutdown -h now'

#int-3
ssh -i /home/ubuntu/new.pem -o StrictHostKeyChecking=no  ubuntu@ec2-65-1-1-165.ap-south-1.compute.amazonaws.com 'sudo shutdown -h now'

#int-4
ssh -i /home/ubuntu/new.pem -o StrictHostKeyChecking=no  ubuntu@ec2-3-110-86-112.ap-south-1.compute.amazonaws.com 'sudo shutdown -h now'


# enter this in crontab -e to automate it. -o StrictHostKeyChecking=0 is imp 
