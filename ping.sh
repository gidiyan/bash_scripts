#!/bin/bash

for i in {128..130} 
do
if ping -W 1 -c 1 192.168.198.$i> /dev/null
then
	echo "192.168.0.$i check"
else
	echo "192.168.0.$i no check"
fi
done
