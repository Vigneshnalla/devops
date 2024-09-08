#!/bin/bash

# Get the user ID of the current user
USERID=$(id -u)


echo USERID
echo "user id printed"
# # Check if the script is run as root (USERID 0 is root)
# if [ $USERID -ne 0 ]; then
#     echo "Please run this script with root access."
#     exit 1
# fi

# # Install MySQL using DNF
# dnf install mysql -y

# echo "is script proceding without erros"