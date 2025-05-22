#!/bin/bash

read -s -p "Given Number is: " NO

if [$NO -gt 10 ]
then
    echo "Given Number is $NO grester thsn 10"
else
    echo "Given Number is $NO lesser than 10"
fi

echo $0

echo "Number is $NO"