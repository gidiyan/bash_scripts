#!/bin/bash

function case_1 {
         echo "cases true"
 }
 function case_2 {
         echo "cases false"
 }


if [ $# -eq 1 ]
then
	case $1 in
    		mysql)
      		case_1
      	;;
    		*)
      		case_2
      	;;
	esac
else
	echo "need args"
fi

if [ $#=1 ]
then
	if [[ "$1" == "mysql" ]]
	then
		echo "if true"
	else
		echo "if false"
	fi
else
        echo "need args"
fi
