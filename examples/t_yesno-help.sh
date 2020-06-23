#!/bin/sh

DIALOG=../bin/qdialog

$DIALOG --trim --title "MAXIMIZED YES/NO BOX" --clear --help-button \
        --yesno "Hi, this is a yes/no dialog box. You can use this to ask \
                 questions that have an answer of either yes or no. \
                 BTW, do you notice that long lines will be automatically \
                 wrapped around so that they can fit in the box? You can \
                 also control line breaking explicitly by inserting \
                 'backslash n' at any place you like, but in this case, \
                 auto wrap around will be disabled and you will have to \
                 control line breaking yourself." -1 -1

case $? in
  0)
    echo "Yes chosen.";;
  1)
    echo "No chosen.";;
  2)
    echo "Help pressed.";;
  3)
    echo "Extra pressed.";;
  255)
    echo "ESC pressed.";;
esac
