#!/bin/bash

echo "all variables: $@" #to ptint all variables
echo "Number of variables passed: $#"
echo "to show script name: $0"
echo "current working directory: $PWD"
echo "home directory of the current user: $HOME"
echo "which user is running this script: $USER" 
echo "hostname: $HOSTNAME"
echo "process id of the current shell script: $$"
sleep 60 &
echo "process ID of lst background command: $!"

