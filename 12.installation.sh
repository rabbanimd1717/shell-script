#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
    echo "proceed to run and this is sudo user"
else 
    echo "this is not superuser. just stop this command"
fi


dnf install mysql -y