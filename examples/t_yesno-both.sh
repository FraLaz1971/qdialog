#!/bin/sh

DIALOG=../bin/qdialog

$DIALOG --title "YES/NO/MAYBE BOX" \
	--clear \
	--ok-label "Next" \
	--no-label "Cancel" \
	--extra-label "Previous" --extra-button \
	--trim \
	--help-button \
        --yesno "Hi, this is a yes/no dialog box with its labels changed. \
                 You can use this to ask \
                 questions that have an answer of either yes or no (or maybe). \
                 BTW, do you notice that long lines will be automatically \
                 wrapped around so that they can fit in the box? You can \
                 also control line breaking explicitly by inserting \
                 'backslash n' at any place you like, but in this case, \
                 auto wrap around will be disabled and you will have to \
                 control line breaking yourself." 15 61

case $? in
  0)
    echo "Next chosen.";;
  1)
    echo "Cancel chosen.";;
  2)
    echo "Help pressed.";;
  3)
    echo "Previous pressed.";;
  255)
    echo "ESC pressed.";;
esac
