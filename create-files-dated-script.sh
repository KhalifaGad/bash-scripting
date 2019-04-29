#! /bin/bash

todayDate=`date +%Y-%m-%d`

if [ "$1" == "" ]
  then
    echo 'this are no file name provided! please enter it'
    read fullFileName
    IFS="." read fileName extention <<< $fullFileName 
    fileDatedName="${fileName}_${todayDate}.${extention}"
else
  IFS="." read fileName extention <<< $1
  fileDatedName="${fileName}_${todayDate}.${extention}"
fi

touch $fileDatedName
