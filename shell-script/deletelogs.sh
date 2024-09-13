SOURCE_DIRECTORY=temp/app-logs

if [ -d $SOURCE_DIRECTORY ]
then 
    echo " source direcotry exitst"
else
    echo " source directory not exists"
    exist 1
fi

touch -d "$(date -d '14 days ago' '+%Y-%m-%d %H:%M:%S')" $SOURCE_DIRECTORY/oldfile1.log
touch -d "$(date -d '14 days ago' '+%Y-%m-%d %H:%M:%S')" $SOURCE_DIRECTORY/oldfile2.log
touch -d "$(date -d '14 days ago' '+%Y-%m-%d %H:%M:%S')" $SOURCE_DIRECTORY/oldfile3.log


Files=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)

while IFS= read -r line
do
    echo "Deleting file:$line "
    rm -rf $line
done <<< $Files