#! /bin/sh

echo "Starting infinite process"

n=1
while true
do
    echo "$n: Inside an infinite loop"
    n=$(( n+1 ))
    sleep 1

done