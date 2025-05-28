#!/bin/bash

USER_ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log


FUN_NAME(){
    if [ $1 -eq 0 ]
    then
        echo "$2 is SUCCESS"
    else
        echo "$2 is Failure"
        exit 1
    fi
}

echo $USER_ID

dnf install mysql -y &>> $LOG_FILE

FUN_NAME $? "Installing package of mysql"

dnf install git -y &>> $LOG_FILE

FUN_NAME $? "Installing package of git"

echo "Both packages install successfull"

dnf install dockerr -y &>> LOG_FILE

FUN_NAME $? "Installing Docker" 

echo "I think its failed y we give wrong package"