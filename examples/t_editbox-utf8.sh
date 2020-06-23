#!/bin/sh
: ${DIALOG=../bin/qdialog}

tempfile=`tempfile 2>/dev/null` || tempfile=/tmp/test$$
trap "rm -f $tempfile" 0 1 2 5 15

case none"$LANG$LC_ALL$LC_CTYPE" in
*UTF-8*)
	;;
*)
	echo "This script must be run in a UTF-8 locale"
	exit 1
	;;
esac

input=`tempfile 2>/dev/null` || input=/tmp/input$$
output=`tempfile 2>/dev/null` || output=/tmp/test$$
trap "rm -f $input $output" 0 1 2 5 15

cat << EOF > $input
Hi, this is a edit box. You can use this to 
allow the user to enter or modify free-form text.

Try it now!

        -----------     --------------------------------
	Choose		Description of the OS you like
	-----------	--------------------------------
	Ｌｉｎｕｘ	The Great Unix Clone for 386/486 
	ＮｅｔＢＳＤ	Another free Unix Clone for 386/486 
	ＯＳ/２		IBM OS/2 
	ＷＩＮ ＮＴ	Microsoft Windows NT 
	ＰＣＤＯＳ	IBM PC DOS 
	ＭＳＤＯＳ	Microsoft DOS
	-----------	--------------------------------
        -----------     --------------------------------
EOF

$DIALOG --title "EDIT BOX" \
	--fixed-font --editbox $input 0 0 2>$output

case $? in
  0)
    diff -c $input $output
    echo "OK"
    ;;
  1)
    echo "Button 1 (Cancel) pressed";;
  2)
    echo "Button 2 (Help) pressed";;
  3)
    echo "Button 3 (Extra) pressed";;
  255)
    echo "ESC pressed.";;
esac
