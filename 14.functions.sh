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
    echo "status: $1"
    echo "what is installed: $2"

}

dnf install mysql

new_fun echo $? "installing mysql"