SOURCE_DIRECTORY=/tmp/app-logs

if [ -d $SOURCE_DIRECTORY ]
then 
    echo " source direcotry exitst"
else
    echo " source directory not exists"
    exist 1
fi


Files=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)

while IFS= read -r line
do
    echo "Deleting file:$line "
    rm -rf $line
done <<< $Files