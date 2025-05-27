#!/bin/bash

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
    else 
        echo "not installing command is failed"
        exit 1
    fi

}

dnf install mysql

new_fun $? "installing mysql"

echo "failed no need to show this command"