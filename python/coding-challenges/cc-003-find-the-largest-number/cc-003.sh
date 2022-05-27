#!/bin/bash
COUNT=0
NUMBER_LIST=()
until [[ $COUNT -eq 5 ]]
do
    read -p "Enter a number to find greatest of them :" NUMBER
    NUMBER_LIST[$COUNT]=$NUMBER
    (( COUNT++ ))
done

result=$(echo ${NUMBER_LIST[@]} | sort | cut -d " " -f 5)
echo "The greatest number is $result."


