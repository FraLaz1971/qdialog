#!/bin/sh

DIALOG=../bin/qdialog



(
for n in 0 1 2 3 4 5 4 3 2 1 0
do
sleep 2
PCT=`expr $n \* $n \* 4`
echo "XXX"
echo $PCT
echo "The new\n\
message ($PCT percent)"
echo "XXX"
sleep 1
done
) | $DIALOG --title "GAUGE" --gauge "Hi, this is a gauge widget" 10 70 0
