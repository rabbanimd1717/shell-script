#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
    echo "proceed to run and this is sudo user"
    exit 0
else 
    echo "this is not superuser. just stop this command"
    exit 1
fi


dnf install mysql -y