#!/bin/bash
echo "Enter number of elements in first array"
read a
echo "Enter number of elements in second array"
read b
echo

START=$(date +%s%N)
for ((i=0;i<=$(($a-1));i++))
do
	firstArray[$i]=$(($RANDOM % 100))
done
for ((i=0;i<=$(($b-1));i++))
do
	secondArray[$i]=$(($RANDOM % 100))
done

echo "First Array: "${firstArray[@]} 
echo "Second Array: "${secondArray[@]}
echo

sortedFirstArray=($(echo "${firstArray[@]}" | tr ' ' '\n' | sort -u | sort -n | tr '\n' ' '))
sortedSecondArray=($(echo "${secondArray[@]}" | tr ' ' '\n' | sort -u | sort -n | tr '\n' ' '))

echo "Unique First Array Elements: "${sortedFirstArray[@]}
echo "Unique Second Array Elemenst: "${sortedSecondArray[@]}
echo

for ((i=0;i<=$((${#sortedFirstArray[@]}-1));i++))
do
	if [[ ${sortedSecondArray[@]} =~ ${sortedFirstArray[$i]} ]]
	then
		merge[$i]=${sortedFirstArray[$i]}
	fi
done

echo "Common Elements In Both Arrays: " ${merge[@]} 
echo "Number Of Common Elements: "${#merge[@]}
END=$(date +%s%N)
DIFF=$(($((($END - $START)/1000000))))
echo "Script was runnig $DIFF ms"
