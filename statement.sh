#!/bin/bash

i=$1
if [[ $# -ne 2 ]]
	then 
	echo "oops"
	exit 1
fi

if [[ $i -ge 0 ]] && [[ $i -lt 10 ]] 
then
	echo "$i more then 0 and less then 10"

elif [[ $i -ge 10 ]] && [[ $i -lt 20 ]]
then 	
	echo "$i more then 10 but less then 20"
else 
	echo "$i more then 20" 
fi

if [[ -e $2 ]]
then
	echo "it exist"
else
	echo "no file"
fi

