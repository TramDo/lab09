#!/bin/bash

counter=0
while :
do
	./waitForButtonPress.sh
	(( ++counter ))
	./setbits.sh $counter
	if [ $counter -eq 16 ]
	then
		for pin in {0..3}
		do
			gpio write $pin 0
		done
		gpio write 4 1
		sleep 1
		gpio write 4 0
		break
	fi

done
