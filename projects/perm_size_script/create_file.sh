#!/bin/bash

: ' TITLE: FILE CREATION FOR FILE SIZE 
    AUTHOR: WAKEEL
    DATE: 25ST AUGUST, 2023
'

function create_file {
        touch $file_name.txt
}

function check_file {
    ls -la 
}

function remove_file {
    rm -rf $output_file.*
}