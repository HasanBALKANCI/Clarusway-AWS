#!/bin/bash
NUMBER=1

until [[ $NUMBER -lt 10 ]]
do
    echo "$NUMBER"
    ((NUMBER++))
done 
    echo " You recapped until and now number\
is $NUMBER"