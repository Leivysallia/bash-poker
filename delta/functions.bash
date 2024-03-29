#!/bin/bash

freshstart () {

clear
clear
clear

}

shuffle () {

IFS=$'\n' iteration=( $(shuf -e "${library[@]}") )

unset IFS

}

dex () {

dex=$(( dex + 1 ))

}

ruffle () {

IFS=$'\n' mchand=($(sort -n <<<"${mchand[*]}"))
unset IFS

}

deal () {

mchand[0]=${iteration[$dex]}
dex
mchand[1]=${iteration[$dex]}
dex
mchand[2]=${iteration[$dex]}
dex
mchand[3]=${iteration[$dex]}
dex
mchand[4]=${iteration[$dex]}
dex

ruffle

}

var () {

card1=${mchand[0]}
card2=${mchand[1]}
card3=${mchand[2]}
card4=${mchand[3]}
card5=${mchand[4]}

num1=${card1%% *}
num2=${card2%% *}
num3=${card3%% *} 
num4=${card4%% *}
num5=${card5%% *}

class1=${card1##* }
class2=${card2##* }
class3=${card3##* }
class4=${card4##* }
class5=${card5##* }

}

index () {

	one=$(( one - 1 ))
	two=$(( two - 1 ))
	three=$(( three - 1 ))

}

mull () {

read -n1 -r -p $'+How Many to Discard? [0-3]: ' dis
while [[ dis -gt 3 || dis -lt 0 ]]; do
	echo $'Invalid Input: '
	read -n1 -r -p $'How Many to Discard? [0-3]: ' dis
done

if [[ dis -eq 1 ]]; then
	read -n1 -r -p $'\n|Index Number [1-5]: ' one
			index
	mchand[$one]=${iteration[$dex]}
	dex
fi

if [[ dis -eq 2 ]]; then
	read -n1 -r -p $'\n|Index Number [1-5]: ' one
	read -n1 -r -p $'\n|Index Number [1-5]: ' two
	while [[ $two -eq $one ]]; do
		read -n1 -r -p $'\n|Invalid, Select. [1-5]: ' two
	done
			index
	mchand[$one]=${iteration[$dex]}
	dex
	mchand[$two]=${iteration[$dex]}
	dex
fi

if [[ dis -eq 3 ]]; then
	read -n1 -r -p $'\n|Index Number [1-5]: ' one
	read -n1 -r -p $'\n|Index Number [1-5]: ' two
		while [[ $two -eq $one ]]; do
		read -n1 -r -p $'\n|Invalid, Select. [1-5]: ' two
		done
	read -n1 -r -p $'\n|Index Number [1-5]: ' three
		while [[ $three -eq $one || $three -eq $two ]]; do
		read -n1 -r -p $'\n|Invalid, Select. [1-5]: ' three
		done
			index
	mchand[$one]=${iteration[$dex]}
	dex
	mchand[$two]=${iteration[$dex]}
	dex
	mchand[$three]=${iteration[$dex]}
	dex	
fi

echo $'\n'

ruffle

}

calc () {

var

flush=$(echo $class1 $class2 $class3 $class4 $class5 | fmt -1 | uniq | wc -l)

pair1=$(echo $num1 $num2 | fmt -1 | uniq | wc -l)
pair2=$(echo $num2 $num3 | fmt -1 | uniq | wc -l)
pair3=$(echo $num3 $num4 | fmt -1 | uniq | wc -l)
pair4=$(echo $num4 $num5 | fmt -1 | uniq | wc -l)

three1=$(echo $num1 $num2 $num3 | fmt -1 | uniq | wc -l)
three2=$(echo $num2 $num3 $num4 | fmt -1 | uniq | wc -l)
three3=$(echo $num3 $num4 $num5 | fmt -1 | uniq | wc -l)

straight=$(echo $num1 $((num2 - 1)) $((num3 - 2)) $((num4 - 3)) $((num5 - 4)) | fmt -1 | uniq | wc -l)

four1=$(echo $num1 $num2 $num3 $num4 | fmt -1 | uniq | wc -l)
four2=$(echo $num2 $num3 $num4 $num5 | fmt -1 | uniq | wc -l)

display[0]=":  "
display[1]=":  "
display[2]=":  "
display[3]=":  "
display[4]=":  "

}

iswin () {

calc

## PAIR CODE

if [[ "$pair1" -eq 1 ]] ; then
    flag=Pair
display[0]=": +"
display[1]=": +"
fi

if [[ "$pair2" -eq 1 ]] ; then
    flag=Pair
display[1]=": +"
display[2]=": +"
fi

if [[ "$pair3" -eq 1 ]] ; then
    flag=Pair
display[3]=": +"
display[2]=": +"
fi

if [[ "$pair4" -eq 1 ]] ; then
    flag=Pair
display[3]=": +"
display[4]=": +"
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
display[0]=": +"
display[1]=": +"
display[2]=": +"
fi

if [[ "$three2" -eq 1 ]]; then
    flag="Three of a Kind" 
display[3]=": +"
display[1]=": +"
display[2]=": +"
fi

if [[ "$three3" -eq 1 ]]; then
    flag="Three of a Kind"
display[3]=": +"
display[4]=": +"
display[2]=": +"
fi
## END THREE OF A KIND CODE

## STRAIGHT CODE

if [[ "$straight" -eq 1 ]]; then
	flag="Straight"
display[3]=": +"
display[4]=": +"
display[0]=": +"
display[1]=": +"
display[2]=": +"
fi
## END STRAIGHT CODE

## FLUSH CODE

if [[ "$flush" -eq 1 ]]; then
	flag="Flush"
display[0]=": +"
display[1]=": +"
display[2]=": +"
display[3]=": +"
display[4]=": +"
else
	flush=0
fi

## END FLUSH CODE

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
display[0]=": +"
display[1]=": +"
display[2]=": +"
display[3]=": +"
fi

if [[ "$four2" -eq 1 ]] ; then
    flag="Four of a Kind"
display[4]=": +"
display[1]=": +"
display[2]=": +"
display[3]=": +"
fi
## END FOUR OF A KIND CODE

## STRAIGHT FLUSH CODE
if [[ "$flush" -eq 1 ]]; then
	if [[ "$straight" -eq 1 ]]; then
	flag="Straight Flush"
	fi
fi
## END STRAIGHT FLUSH CODE

##echo $'\n'
echo "$flag"

}

render () {

iswin
echo ""

echo "1""${display[0]}""${mchand[0]}"
echo "2""${display[1]}""${mchand[1]}"
echo "3""${display[2]}""${mchand[2]}"
echo "4""${display[3]}""${mchand[3]}"
echo "5""${display[4]}""${mchand[4]}"

echo "-------------------------------"

}

game () {

freshstart
shuffle
deal
render
mull
render
sleep 1

read -n1 -r -p $'\nPlay Again? [1=Y] ' repeat

echo ""

}

debug_game () {

freshstart
shuffle
deal
render
mull

mchand[0]="${library[30]}"
mchand[1]="${library[31]}"
mchand[2]="${library[33]}"
mchand[3]="${library[37]}"
mchand[4]="${library[38]}"

render
sleep 1

}