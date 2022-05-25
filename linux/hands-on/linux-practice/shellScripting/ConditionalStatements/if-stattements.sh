#!/bin/bash
read -p "Input a number: " NUMBER 

if [[ $NUMBER -gt 50 ]]
then
    echo "$NUMBER is greater than 50"
else
    echo "$NUMBER is smaller than or equal to 50"

fi