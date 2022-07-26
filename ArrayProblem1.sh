#!/bin/bash -x

last_but_one_Maximum()
{
    max1=0
    max2=0

    for x in "${array[@]}"
    do
        if (( x > max1))
        then
            max2=$max1
            max1=$x
        elif (( x > max2 && x != max1))
        then
            max2=$x
        fi
    done
    echo "Second largest element  is $max2"
}
last_but_one_Minimum()
{
    min1=1000
    min2=1000

    for x in "${array[@]}"
    do
        if (( x < min1))
        then
            second=$min1
            min1=$x
        elif (( x < min2 && x != first))
        then
            min2=$x
        fi
    done
    echo "Second smallest element  is $min2"
}


size=10
for(( i=0; i<size; i++))
do
    array[i]=$(( RANDOM % 900 + 100 ))
done

echo "The 10 random 3 digit numbers are: "
echo "${array[@]}"
last_but_one_Maximum "${array[@]}"
last_but_one_Minimum "${array[@]}"
