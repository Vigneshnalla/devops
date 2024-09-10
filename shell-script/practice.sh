#!/bin/bash

echo "practice file"




USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysql -y


if [$? -eq 0 ]
then 
    "my sql installation sucess"
else
    "dnf install mysql -y failure"
fi