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
        echo "$2"
        exit 1
    else 
        echo "not installing command is failed"
        exit 1
    fi

}

dnf install mysql >> $Log_file

new_fun $? "installing mysql"

echo "failed no need to show this command"