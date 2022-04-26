#!/bin/bash

source functions
##	source vars

flag="HIGH"

start
ruffle

deal

phase

mull

read -n1 -r -p $'How Many to Discard? [0-3]:\n' dis
while [[ dis -gt 3 || dis -lt 0 ]]; do
	echo $'Invalid Input:\n'
	read -n1 -r -p $'How Many to Discard? [0-3]:\n' dis
done

if [[ dis -eq 1 ]]; then
	read -n1 -r -p $'\n:Index Number [1-5]:\n' one
	sort -n hand |head -"$one" |tail -1 >> graveyard
fi

if [[ dis -eq 2 ]]; then
	read -n1 -r -p $'\n:Index Number [1-5]:\n' one
	read -n1 -r -p $'\n:Index Number [1-5]:\n' two
	while [[ $two -eq $one ]]; do
		read -n1 -r -p $'\n:Invalid, Select. [1-5]:\n' two
	done
	sort -n hand |head -"$one" |tail -1 >> graveyard
	sort -n hand |head -"$two" |tail -1 >> graveyard
fi

if [[ dis -eq 3 ]]; then
	read -n1 -r -p $'\n:Index Number [1-5]:\n' one
	read -n1 -r -p $'\n:Index Number [1-5]:\n' two
		while [[ $two -eq $one ]]; do
		read -n1 -r -p $'\n:Invalid, Select. [1-5]:\n' two
		done
	read -n1 -r -p $'\n:Index Number [1-5]:\n' three
		while [[ $three -eq $one || $three -eq $two ]]; do
		read -n1 -r -p $'\n:Invalid, Select. [1-5]:\n' three
		done
	sort -n hand |head -"$one" |tail -1 >> graveyard
	sort -n hand |head -"$two" |tail -1 >> graveyard
	sort -n hand |head -"$three" |tail -1 >> graveyard
fi




ruffle

cat hand >> graveyard

ruffle

uniq -u graveyard > hand 

ruffle


seed=$(cat hand |wc -l)
seed=$((5 - seed))


sort -Ru library | head -$seed >> hand


cat hand > discard
cat library >> discard
ruffle
uniq -u discard > library
cat /dev/null > discard
ruffle

echo $'\n'

mull

while read -r num fo class; do
	echo "$num" >> num
	echo "$class" >> class
done < hand

ruffle

read -r num1 num2 num3 num4 num5 < num
read -r class1 class2 class3 class4 class5 < class

ruffle


calc

## FLUSH CODE

if [[ "$flush" -eq 1 ]]; then
	flush=1
else
	flush=0
fi

## END FLUSH CODE

## PAIR CODE

if [[ "$pair1" -eq 1 ]] ; then
    flag=Pair

fi

if [[ "$pair2" -eq 1 ]] ; then
    flag=Pair

fi

if [[ "$pair3" -eq 1 ]] ; then
    flag=Pair

fi

if [[ "$pair4" -eq 1 ]] ; then
    flag=Pair

fi
## END PAIR CODE

## TWO PAIR CODE
if [[ "$pair1" -eq 1 ]]; then
	if [[ "$pair2" -eq 1 ]]; then
	flag="Two Pair"
	fi
fi
if [[ "$pair1" -eq 1 ]]; then
	if [[ "$pair3" -eq 1 ]]; then
	flag="Two Pair"
	fi
fi
if [[ "$pair1" -eq 1 ]]; then
	if [[ "$pair4" -eq 1 ]]; then
	flag="Two Pair"
	fi
fi
if [[ "$pair2" -eq 1 ]]; then
	if [[ "$pair3" -eq 1 ]]; then
	flag="Two Pair"
	fi
fi
if [[ "$pair2" -eq 1 ]]; then
	if [[ "$pair4" -eq 1 ]]; then
	flag="Two Pair"
	fi
fi
if [[ "$pair3" -eq 1 ]]; then
	if [[ "$pair4" -eq 1 ]]; then
	flag="Two Pair"
	fi
fi
## END TWO PAIR CODE

## THREE OF A KIND CODE

if [[ "$three1" -eq 1 ]]; then
    flag="Three of a Kind"
 
fi

if [[ "$three2" -eq 1 ]]; then
    flag="Three of a Kind" 
   
fi

if [[ "$three3" -eq 1 ]]; then
    flag="Three of a Kind"

fi
## END THREE OF A KIND CODE

## STRAIGHT CODE


if [[ "$straight" -eq 1 ]]; then
	straight=1
fi
## END STRAIGHT CODE

## FULL HOUSE CODE
if [[ "$three1" -eq 1 ]]; then
	if [[ "$pair4" -eq 1 ]]; then
	flag="Full House"
	fi
fi
if [[ "$three3" -eq 1 ]]; then
	if [[ "$pair1" -eq 1 ]]; then
	flag="Full House"
	fi
fi
## END FULL HOUSE CODE

## FOUR OF A KIND CODE
if [[ "$four1" -eq 1 ]] ; then
    flag="Four of a Kind"

fi

if [[ "$four2" -eq 1 ]] ; then
    flag="Four of a Kind"

fi
## END FOUR OF A KIND CODE

## STRAIGHT FLUSH CODE
if [[ "$flush" -eq 1 ]]; then
	if [[ "$straight" -eq 1 ]]; then
	flag="Straight Flush"
	fi
fi
## END STRAIGHT FLUSH CODE

echo $'\n'
echo "$flag"

## DEBUG

##	echo "$flush" "$pair1" "$pair2" "$pair3" "$pair4" "$three1" "$three2" "$three3" "$straight" "$four1" "$four2" | fmt -1 > debug.test

## END DEBUG

clean