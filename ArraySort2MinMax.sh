#! /bin/bash -x

# generate 3 digit random number
function randomNum() {

randomNumber=$((RANDOM%900+100))

echo $randomNumber


}

# Find the second largest number
function arraySort() {
randomNumbers=("$@")


length="${#randomNumbers[@]}"

for (( i = 0; i < ${#randomNumbers[@]}; i++ ))
do
        for (( j = $i; j < ${#randomNumbers[@]}; j++ ))
        do
                if [ ${randomNumbers[$i]} -gt ${randomNumbers[$j]}  ]; then
                        temp=${randomNumbers[$i]}
                        randomNumbers[$i]=${randomNumbers[$j]}
                        randomNumbers[$j]=$temp
                fi
        done
done
echo "Sorted array is " ${randomNumbers[@]}
echo "Second Maximum number is ${randomNumbers[ $(( ${#randomNumbers[@]}-2 )) ]}"
echo "Second Minimum number is ${randomNumbers[1]}"
}

# Store the random number to the unsorted array

function createArray() {

k=0

while [ $k -lt 10 ]
do
        randomNumberArray[((k++))]=$(randomNum)
done

echo ${randomNumberArray[@]}

arraySort ${randomNumberArray[@]}
}

createArray

