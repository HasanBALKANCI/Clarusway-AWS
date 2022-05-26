#!/bin/bash

if [[ ${UID} -ne 0 ]]
then
    echo "please run with sudo command"
    exit 1
fi

read -p "Enter the name: " USER_NAME
read -p "Enter the comment: " COMMENT 
read -sp "Enter the passpord" PASSWD 

useradd -c ${COMMENT} -m ${USER_NAME}

if [[ $? -eq 0 ]]
then
    echo -e "\nThe account of $USER_NAME was created succesfully"
else 
    echo "Try again" 
fi

echo ${PASSWD} | passwd --stdin ${USER_NAME}
if [[ $? -eq 0 ]]
then
    echo -e "\nThe password of $USER_NAME was created succesfully"
else 
    echo "Try again" 
fi
# user must change passwd
passwd -e ${USER_NAME}

