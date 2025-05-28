#!/bin/bash

USER_ID=$(id -u)

FUN_NAME(){
    if [ $1 -eq 0 ]
    then
        echo "$2 is SUCCESS"
        exit 1
    else
        echo "$2 is Failure"
    fi
}

echo $USER_ID

dnf install mysql -y 

FUN_NAME $? "Installing package of mysql"

dnf install git -y

FUN_NAME $? "Installing package of git"

echo "Both packages install successfull"

dnf install dockerr -y

FUN_NAME $? "Installing Docker"

echo "I think its failed y we give wrong package"