#!/bin/bash

if [[ `whoami` = ec2-user ]]
then
    echo "You are valid user."
else
    echo "You are not valid user."
fi

if [[ "a" != "b" ]]
then 
    echo "They are not same"
fi

if [[ -z "" ]]
then 
    echo "This is an empty string."
fi

if [[ -n " " ]]
then
    echo "This is a non-empty string."
fi