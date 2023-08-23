#!/bin/bash

: ' TITLE: file creation 
    AUTHOR: WAKEEL
    DATE: 21ST AUGUST, 2023
'

function create_file {
        touch $output_file.txt
}

function check_file {
    ls -la 
}

function remove_file {
    rm -rf $output_file.*
}