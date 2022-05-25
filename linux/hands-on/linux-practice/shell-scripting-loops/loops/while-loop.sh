#!/bin/bash
NUMBER=1
while [[ $NUMBER -lt 10 ]]
do
    echo $NUMBER 
    ((NUMBER++))
done
echo "Now, number is $NUMBER"