#!/bin/bash

Timestamp=$(date +%F-%H-%M-%S)
script_name=$(echo $0 | cut -d "." -f2)
Log_file=/tmp/$script_name-$Timestamp.log


fun_name(){
    echo $PWD
    echo $HOME
    echo $0
    echo $$
}

fun_name
PWD
ls -la


new_fun(){
    if [ $1 -eq 0 ]
    then 
        echo "$2 Success"
        exit 1
    else 
        echo "$2 not installing command is failed"
        exit 1
    fi

}

dnf install mysql >> $Log_file

new_fun $? "installing mysql"


dnf install git -y >> $Log_file

new_fun $1 "installing git"

