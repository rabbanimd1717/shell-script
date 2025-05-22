#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
    echo "try to use super user access is denied with normal user"
     exit 1 #proceed to execute the next commands
else
    echo "this is super user proceed to install"
fi


#commands to execute with eixt or without exit to proceed



dnf install mysql -y


if [ $? -ne 0 ]
then
    echo "proceed to next command to execute"
    exit 1
else
    echo "stop here"
    exit 1
fi

echo "if command failed proceed to this or not"