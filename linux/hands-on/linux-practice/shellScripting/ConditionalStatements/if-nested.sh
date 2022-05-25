#!/bin/bash
read -p "Enter a number: " NUMBER 

if [[ $NUMBER -gt 10 ]]
then
    echo  "$NUMBER is greater than 10"
    
    if (( $NUMBER % 2 == 1 ))
    then
        echo  "and is an odd number"
    else
        echo  "and is an even number"
    fi

elif [[ $NUMBER -eq 10 ]]
then    
    echo "$NUMBER is equal to 10"

    if (( $NUMBER % 2 == 1 ))
    then
        echo  "and is an odd number"
    else
        echo  "and is an even number"
    fi

else
    echo  "$NUMBER is smaller than 10"
    if (( $NUMBER % 2 == 1 ))
    then
        echo  "and is an odd number"
    else
        echo  "and is an even number"
    fi
fi
