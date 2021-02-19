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

for ((i=1;i<=20;i++))
do
    randomNumber=$(($RANDOM%2))
if [ $randomNumber -eq 1 ]
then
totalHead=$(($totalHead+1))
else
totalTail=$(($totalTail+1))
fi
done

if [ $totalHead -gt $totalTail ]
then
   dist=$(($totalHead-$totalTail))
   echo " Head won by distincion of:" $dist
elif [ $totalHead -lt $totalTail ]
then
    dist=$(($totalTail-$totalHead))
   echo "Tail won by distinction of:" $dist
else
   echo "Its a tie"

for((i=1;i<=3;i++))
do
    randomNumber=$(($RANDOM%2))
if [ $randomNumber -eq 1 ]
then
   totalHead=$(($totalHead+1))
else
   totalTail=$(($totalTail+1))
fi
done
if [ $totalHead -gt $totalTail ]
then 
echo "Head won"
else
echo "Tail won"
fi
fi
