#!/bin/bash

user_code="This is Rabbani current script code"

echo "current script: $user_code"

echo "PID process of current script: $$"

#./17.otherscript.sh 

source ./17.otherscript.sh 

echo "after call the other script: $user_code"
