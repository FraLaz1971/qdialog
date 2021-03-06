#!/bin/sh

DIALOG=../bin/qdialog

$DIALOG --no-ok --title "PAUSE" \
	--help-button \
	--pause "Hi, this is a pause widget" 20 70 10

retval=$?

case $retval in
  0)
    echo "Timeout expired.";;
  1)
    echo "Button 1 (Cancel) pressed.";;
  2)
    echo "Button 2 (Help) pressed.";;
  3)
    echo "Button 3 (Extra) pressed.";;
  255)
    echo "ESC pressed.";;
  *)
    echo "Unexpected return code: $retval";;
esac
