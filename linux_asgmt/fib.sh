#! /bin/bash
first=0
second=1
count=0
count2=0
num=50
rev=0
while [ $count -le $num ]
do
  fib=$(( $first + $second ))
 if [ $num -eq $count ]
  then
    while [ $num -ge $count2 ]
      do
        rev=$(( $second - $first ))
        echo $rev
        second=$first
        first=$rev
        let count2++
      done
  fi
first=$second
second=$fib
let count++
done
