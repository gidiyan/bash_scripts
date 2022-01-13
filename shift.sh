#!/bin/bash

echo "Params count - "$#

until [ -z "$1" ]  
do
  echo -n "$1 "
  shift
done

echo

echo "Script file name - "$0

echo

exit 0
