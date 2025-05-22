#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
    echo "proceed to run and this is sudo user"
    exit 1
else 
    echo "this is not superuser. just stop this command"
    exit 0
fi


dnf install mysql -y