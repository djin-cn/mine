#! /bin/bash

function back(){
  for file in `ls $1`
  do
    if [ -d $1"/"$file ]
    then
      echo -e "\n${file} backup..."
      svnadmin dump $1"/"$file > $file.dump
    fi
  done
}

function restore(){
  for file in `ls $1/*.dump`
  do
    echo -e "\n$(basename $file .dump) restore ..."
    svnadmin create $2"/"$(basename $file .dump)
    svnadmin load $2"/"$(basename $file .dump) < $file > /dev/null 2>&1
  done
}

$1 $2 $3
