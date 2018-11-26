#!/bin/bash 

for pin in {0..3}
do
if (( ($1 >> $pin & 1) == 1 ))
then
	gpio write $pin 1
else 
	gpio write $pin 0
fi

done
