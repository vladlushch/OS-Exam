#!/bin/bash
e=`shuf -i 20-200 -n 1`
for ((i=1;i<=e;i++))
do
first=${i:0:1}
last=$(($i%10))
str=''
if [[ $last -eq 3 ]]
then
str="foo"
fi
if [[ $first -eq 2 ]]
then
str+="bar"
fi
if [ -z $str ]
then
str=$i
fi
echo $str
done
