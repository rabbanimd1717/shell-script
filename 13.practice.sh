#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
    echo "try to use super user access is denied with normal user"
    exit 0 #proceed to execute the next commands
else
    echo "this is super user proceed to install"
fi

dnf install mysql -y

echo "if command failed proceed to this or not"