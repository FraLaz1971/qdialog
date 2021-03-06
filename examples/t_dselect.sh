#!/bin/sh
: ${DIALOG=../bin/qdialog}

exec 3>&1
FILE=`$DIALOG --title "Please choose a directory" --dselect $HOME/ 14 28 2>&1 1>&3`
code=$?
exec 3>&-

case $code in
  0)
    echo "\"$FILE\" chosen";;
  1)
    echo "Button 1 (Cancel) pressed";;
  2)
    echo "Button 2 (Help) pressed";;
  3)
    echo "Button 3 (Extra) pressed";;
  255)
    echo "Box closed.";;
esac
