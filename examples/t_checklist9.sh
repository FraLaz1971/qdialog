#!/bin/sh

# "checklist8" using --file
DIALOG=../bin/qdialog

tempfile=`tempfile 2>/dev/null` || tempfile=/tmp/test$$
trap "rm -f $tempfile" 0 1 2 5 15

$DIALOG --file checklist9.txt 2>$tempfile

retval=$?

choice=`cat $tempfile`
case $retval in
  0|2)
    echo "'$choice' chosen.";;
  1)
    echo "Cancel pressed.";;
  255)
    echo "ESC pressed.";;
  *)
    echo "Unexpected code $retval";;
esac
