#! /bin/bash

#Type 1
for i in {1..20..2}
do
    echo $i
done

#Type 2
for (( i=1; i<=10; i++ ))
do
    echo $i
done

#Type 3 with array
arr=("apple" "banana" "cherry")
for i in ${arr[@]}
do
    echo $i
done

#Type 4 with array
declare -A arr2
arr2["name"]="Karan"
arr2["id"]="1234"
for i in "${!arr2[@]}"
do
    echo "$i: ${arr2[$i]}"
done

#Type 5 with any command
for i in $(ls)
do
    echo "$i"
done