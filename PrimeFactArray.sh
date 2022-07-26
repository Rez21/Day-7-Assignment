#! /bin/bash

read -p "Enter the n to find factors:" n

declare a primeFactors
a=0
b=$n

for ((i=2 ; i<= $n ; i++ ))
do
        while (($n%$i == 0 ))
        do
                primeFactors[((a++))]=$i
                n=$((n/i))
        done
done

echo "Prime factors of $b : ${primeFactors[@]}"
