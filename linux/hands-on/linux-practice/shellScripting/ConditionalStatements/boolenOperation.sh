#!/bin/bash

read -p "Enter your name: " NAME 
read -sp "Enter your password: " PASSWD 

if [[ $NAME = $(whoami) ]] && [[ $PASSWD = A123 ]]
then
    echo -e "\nWelcome $(whoami)"
else
    echo "You are not valid user"
fi