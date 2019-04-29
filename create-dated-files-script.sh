#! /bin/bash

todayDate=`date +%Y-%m-%d`
fileName=$1
echo $todayDate
echo $fileName

if [ "$fileName" == "" ]
  then
    echo 'this are no file name provided! please enter it'
    read fileName 
    datedFileName="${todayDate}_${fileName}"
else
  datedFileName="${todayDate}_${fileName}"
fi

touch $datedFileName
