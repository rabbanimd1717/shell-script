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
    echo "if command is execute then only proceed"

}

dnf install mysql

new_fun echo $? "installing mysql"