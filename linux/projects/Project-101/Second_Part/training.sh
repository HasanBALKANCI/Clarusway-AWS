#!/bin/bash
if [[ ${id} -ne 0 ]]
then
    echo "Please run via sudo command!"
    exit
fi

read -p "Enter your name: " USER_NAME
read -p "Enter your duty: " COMMEND
read -sp "Enter your password: " PASSWORD
useradd -c ${COMMEND} -m ${USER_NAME}

if [[ $? -eq 0 ]]
then
    echo -e "\nuser $USER_NAME created succesfully."
else
    echo "Try agin."
fi
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

if [[ $? -eq o ]]
then
    echo -e "\nPassword is created succesfully."
else 
    echo "Try again."
fi

passwd -e ${USER_NAME} # kullanici ilk girdiginde sifresini degistirir.