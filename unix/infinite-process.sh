#! /bin/sh

echo "Starting infinite process"

n=1
while true
do
    dt=$(date -j -R)
    ln="$n: Inside an infinite loop at $dt"
    echo $ln
    echo $ln >> infinite-loop.log
    n=$(( n+1 ))
    sleep 1

done