#!/bin/bash

movies=("Manmadhudu" "Jalsa" "khaleja")

# size of above array is 3.

# index are 0,1,2

# list always starts with 0.

echo "First Movie is: ${movies[0]}"
echo "second movie is: ${movies[1]}"
echo "All movies are: ${movies[@]}"