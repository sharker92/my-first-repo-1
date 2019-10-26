#!/bin/bash

array=("first item" "second item" "third" "item")

echo "Number of items in original array: ${#array[*]}"
for i in "${array[@]}"; do echo "$i"; done

arr=(${array[*]})
echo "After unquoted expansion: ${#arr[*]}"
for i in "${arr[@]}"; do echo "$i"; done

arr=("${array[*]}")
echo "After * quoted expansion: ${#arr[*]}"
for i in "${arr[@]}"; do echo "$i"; done

arr=("${array[@]}")
echo "After @ quoted expansion: ${#arr[*]}"
for i in "${arr[@]}"; do echo "$i"; done

