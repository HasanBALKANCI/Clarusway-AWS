#! /bin/bash

read -p "Enter your name and surname: " NAME
sudo useradd $NAME
read -p "Enter your user name: " USERNAME
# read -sp "Enter your Password: " PASSWD
sudo passwd $USERNAME
# read -p "Enter your department: " DEPARTMENT
# sudo usermod -a -G DEPARTMENT 

if ($? == 0)
then
    echo "The account is created succesfully."
