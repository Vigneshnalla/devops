#!/bin/bash


USERID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)

SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TEMP_SCRIPT_NAME=$(echo $0 | cut -d "." f1)

echo "$TEMP_SCRIPT_NAME"
echo "$SCRIPT_NAME"

LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e " $R $2 failure with status $1 $N"
    else
        echo -e " $G $2 Sucess  $N"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

for i in $@
    do
        echo " package to install: $i"
        dnf list installed $i &>>$LOGFILE
        if [ $? -eq 0 ]
        then 
            echo -e "$Y already installed skipping $N"
        else
            dnf install $i -y &>>$LOGFILE
            VALIDATE $? "installation of $i"
        fi

done