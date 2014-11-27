#!/bin/bash
time=`date +"%d%m%y-%H%M%S"`
mkdir -p /root/backup
index=0
while read line ; do
    MYARRAY[$index]="$line"
    index=$(($index+1))
done < path.txt

for i in "${MYARRAY[@]}";
do
arr=$(echo $i | tr "/" "_")

    for x in $arr
    do

    tar -cf /root/backup/"$time""$x".tar $i
    done
done
find $backup_dir -ctime 7 -type f -delete
