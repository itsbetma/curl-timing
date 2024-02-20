#!/bin/bash

arr=0

for i in $(seq 1 $1); do
  VAR=$(curl -o /dev/null -s -w '%{time_total}\n' $2)
  echo "REQ($i): total_time=$VAR seconds"
  arr+=($VAR)
done

echo "$arr" | tr ' ' '\n' | awk '{sum+=$1; n++};END{print "AVG =",sum / (n - 1)}'
