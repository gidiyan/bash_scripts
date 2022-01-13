#!/bin/bash

MINPARAMS=10

echo

echo "Имя файла сценария: \"$0\"."
echo "Имя файла сценария: \"`basename $0`\"."

echo

if [ -n "$1" ]              
then
 echo "Параметр #1: $1"     
fi

if [ -n "$2" ]
then
 echo "Параметр #2: $2"
fi

if [ -n "$3" ]
then
 echo "Параметр #3: $3"
fi

# ...


if [ -n "${10}" ]  
then
 echo "Параметр #10: ${10}"
fi

echo "-----------------------------------"
echo "Все аргументы командной строки: "$*""

if [ $# -lt "$MINPARAMS" ]
then
  echo
  echo "Количество аргументов командной строки должно быть не менее $MINPARAMS !"
fi

# Более простой способ
if [ -z $1 ]
then
  exit $POS_PARAMS_MISSING
fi

echo

exit 0


