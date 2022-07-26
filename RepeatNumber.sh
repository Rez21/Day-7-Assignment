#!/bin/bash -x

declare -a repeatNumber
counter=0
for ((i=10 ; i < 100 ; i++ ))
do
    if [ $((i%10)) -eq   $(((i/10)%10)) ]
    then
        repeatNumber[((counter++))]=$i
    fi

done

echo "Repeated numbers are: ${repeatNumber[@]} "
