#!/bin/bash
head=1
tail=0
randomNumber=$(($RANDOM%2))
if [ $randomNumber -eq 1 ]
then 
  echo "The winner is Heads"
else
 echo "The winner is Tails"
fi
totalHead=0
totalTail=0

for ((i=1;i<=15;i++))
do
    randomNumber=$(($RANDOM%2))
if [ $randomNumber -eq 1 ]
then
totalHead=$(($totalHead+1))
else
totalTail=$(($totalTail+1))
fi
done
echo "No. of times Head won =" $totalHead
echo "No. of times Tail won =" $totalTail
