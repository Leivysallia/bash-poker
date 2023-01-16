#!/bin/bash

freshstart() {

	clear

}

vars() {

    re='[1-5]'
    unset flag
    unset flush
    unset repeat
    unset discard
    unset one
    unset two
    unset three
    unset value
    unset keep
    unset "display[@]"
    unset "library[@]"
    unset "mchand[@]"
    unset "iteration[@]"
    unset "hand[@]"
    unset disone
    unset distwo
    unset disthree

    library[0]="1 of Spades"
    library[1]="2 of Spades"
    library[2]="3 of Spades"
    library[3]="4 of Spades"
    library[4]="5 of Spades"
    library[5]="6 of Spades"
    library[6]="7 of Spades"
    library[7]="8 of Spades"
    library[8]="9 of Spades"
    library[9]="10 of Spades"
    library[10]="11 of Spades"
    library[11]="12 of Spades"
    library[12]="13 of Spades"
    library[13]="13 of Diamonds"
    library[14]="12 of Diamonds"
    library[15]="11 of Diamonds"
    library[16]="10 of Diamonds"
    library[17]="9 of Diamonds"
    library[18]="8 of Diamonds"
    library[19]="7 of Diamonds"
    library[20]="6 of Diamonds"
    library[21]="5 of Diamonds"
    library[22]="4 of Diamonds"
    library[23]="3 of Diamonds"
    library[24]="2 of Diamonds"
    library[25]="1 of Diamonds"
    library[26]="1 of Clubs"
    library[27]="2 of Clubs"
    library[28]="3 of Clubs"
    library[29]="4 of Clubs"
    library[30]="5 of Clubs"
    library[31]="6 of Clubs"
    library[32]="7 of Clubs"
    library[33]="8 of Clubs"
    library[34]="9 of Clubs"
    library[35]="10 of Clubs"
    library[36]="11 of Clubs"
    library[37]="12 of Clubs"
    library[38]="13 of Clubs"
    library[39]="13 of Hearts"
    library[40]="12 of Hearts"
    library[41]="11 of Hearts"
    library[42]="10 of Hearts"
    library[43]="9 of Hearts"
    library[44]="8 of Hearts"
    library[45]="7 of Hearts"
    library[46]="6 of Hearts"
    library[47]="5 of Hearts"
    library[48]="4 of Hearts"
    library[49]="3 of Hearts"
    library[50]="2 of Hearts"
    library[51]="1 of Hearts"

    display[0]=":  "
    display[1]=":  "
    display[2]=":  "
    display[3]=":  "
    display[4]=":  "

}

refresh() {

	unset "display[@]"
	unset "hand[@]"
	unset "iteration[@]"
	unset "library[@]"
	unset "mchand[@]"
	unset dis
	unset flush
	unset four1
	unset four2
	unset index
	unset keep
	unset num1
	unset num2
	unset num3
	unset num4
	unset num5
	unset one
	unset pair1
	unset pair2
	unset pair3
	unset pair4
	unset repeat
	unset straight
	unset three
	unset three1
	unset three2
	unset three3
	unset two
	unset card1
	unset card2
	unset card3
	unset card4
	unset card5
	unset class1
	unset class2
	unset class3
	unset class4
	unset class5
	unset flag
	unset value

}

ruffle() {

	IFS=$'\n'
	mapfile -t mchand < <(sort -n <<<"${mchand[*]}")
	unset IFS

}

shuffle() {

	IFS=$'\n'
	mapfile -t iteration < <(shuf -e -n10 "${library[@]}")
	unset IFS

}

deal() {

	mchand[0]="${iteration[0]}"
	mchand[1]="${iteration[1]}"
	mchand[2]="${iteration[2]}"
	mchand[3]="${iteration[3]}"
	mchand[4]="${iteration[4]}"

}

var() {

	card1="${mchand[0]}"
	card2="${mchand[1]}"
	card3="${mchand[2]}"
	card4="${mchand[3]}"
	card5="${mchand[4]}"

	num1="${card1%% *}"
	num2="${card2%% *}"
	num3="${card3%% *}"
	num4="${card4%% *}"
	num5="${card5%% *}"

	class1="${card1##* }"
	class2="${card2##* }"
	class3="${card3##* }"
	class4="${card4##* }"
	class5="${card5##* }"

	word1="${card1%% *}"
	[[ "$word1" == "1" ]] && word1="Ace"
	[[ "$word1" == "11" ]] && word1="Jack"
	[[ "$word1" == "12" ]] && word1="Queen"
	[[ "$word1" == "13" ]] && word1="King"

	word2="${card2%% *}"
	[[ "$word2" == "1" ]] && word2="Ace"
	[[ "$word2" == "11" ]] && word2="Jack"
	[[ "$word2" == "12" ]] && word2="Queen"
	[[ "$word2" == "13" ]] && word2="King"

	word3="${card3%% *}"
	[[ "$word3" == "1" ]] && word3="Ace"
	[[ "$word3" == "11" ]] && word3="Jack"
	[[ "$word3" == "12" ]] && word3="Queen"
	[[ "$word3" == "13" ]] && word3="King"

	word4="${card4%% *}"
	[[ "$word4" == "1" ]] && word4="Ace"
	[[ "$word4" == "11" ]] && word4="Jack"
	[[ "$word4" == "12" ]] && word4="Queen"
	[[ "$word4" == "13" ]] && word4="King"

	word5="${card5%% *}"
	[[ "$word5" == "1" ]] && word5="Ace"
	[[ "$word5" == "11" ]] && word5="Jack"
	[[ "$word5" == "12" ]] && word5="Queen"
	[[ "$word5" == "13" ]] && word5="King"

}

redex() {

	((one--))
	((two--))
	((three--))
}

mull() {

	index=${#hold[@]}

	if [[ index -ne 0 ]]; then
		read -n1 -r -p $'+Keep Suggested? [0/1]: ' keep
		while [[ "$keep" != "1" && "$keep" != "0" ]]; do
			echo $'>Invalid Input: '
			unset keep
			read -n1 -r -p $'+Keep Suggested? [0/1]: ' keep
		done
	fi

	[[ keep -eq 1 ]] && hold

	if [[ keep -eq 0 ]]; then
		if [[ index -ne 0 ]]; then
			echo ""
		fi
	fi

	if [[ index -eq 0 || keep -eq 0 ]]; then
		while [[ discard -ne 1 ]]; do
			if [[ "$dis" != "0" ]]; then
				if [[ "$dis" != "1" ]]; then
					if [[ "$dis" != "2" ]]; then
						if [[ "$dis" != "3" ]]; then
							unset dis
							read -n1 -r -p $'+How Many to Discard? [0-3]: ' dis
							[[ "$dis" == "0" ]] && discard=1
							[[ "$dis" == "1" ]] && discard=1
							[[ "$dis" == "2" ]] && discard=1
							[[ "$dis" == "3" ]] && discard=1
							if [[ "$discard" != "1" ]]; then
								echo $'\n>Invalid Input: '
							fi
						fi
					fi
				fi
			fi
		done

		if [[ dis -eq 1 ]]; then
			disone=1
		fi
		if [[ dis -eq 2 ]]; then
			disone=1
			distwo=1
		fi
		if [[ dis -eq 3 ]]; then
			disone=1
			distwo=1
			disthree=1
		fi

		if [[ discard -eq 1 ]]; then
			if [[ disone -eq 1 ]]; then
				read -n1 -r -p $'\n|Index Number [1-5]: ' one
				while [[ ! $one =~ $re ]]; do
					echo $'>Invalid Input: '
					unset one
					read -n1 -r -p $'\n|Index Number [1-5]: ' one
				done
				redex
				mchand[one]=${iteration[5]}
			fi

			if [[ distwo -eq 1 ]]; then
				read -n1 -r -p $'\n|Index Number [1-5]: ' two
				while [[ ! $two =~ $re || $two -eq $one ]]; do
					echo $'>Invalid Input: '
					unset two
					read -n1 -r -p $'\n|Index Number [1-5]: ' two
				done
				redex
				mchand[two]=${iteration[6]}
			fi

			if [[ disthree -eq 1 ]]; then
				read -n1 -r -p $'\n|Index Number [1-5]: ' three
				while [[ ! $three =~ $re || $three -eq $one || $three -eq $two ]]; do
					echo $'>Invalid Input: '
					unset three
					read -n1 -r -p $'\n|Index Number [1-5]: ' three
				done
				redex
				mchand[three]=${iteration[7]}
			fi
		fi
	fi

}

ifcalc() {

	flush=0
	four1=0
	four2=0
	pair1=0
	pair2=0
	pair3=0
	pair4=0
	straight=0
	three1=0
	three2=0
	three3=0
	royal=0

	if [[ "$class1" == "$class2" ]]; then
		if [[ "$class2" == "$class3" ]]; then
			if [[ "$class3" == "$class4" ]]; then
				if [[ "$class4" == "$class5" ]]; then
					flush=1
				fi
			fi
		fi
	fi

	if [[ num1 -eq num2 ]]; then
		pair1=1
	fi

	if [[ num2 -eq num3 ]]; then
		pair2=1
	fi

	if [[ num3 -eq num4 ]]; then
		pair3=1
	fi

	if [[ num4 -eq num5 ]]; then
		pair4=1
	fi

	if [[ num1 -eq num2 ]]; then
		if [[ num2 -eq num3 ]]; then
			if [[ num1 -eq num3 ]]; then
				three1=1
			fi
		fi
	fi

	if [[ num2 -eq num3 ]]; then
		if [[ num3 -eq num4 ]]; then
			if [[ num2 -eq num4 ]]; then
				three2=1
			fi
		fi
	fi

	if [[ num3 -eq num4 ]]; then
		if [[ num4 -eq num5 ]]; then
			if [[ num3 -eq num5 ]]; then
				three3=1
			fi
		fi
	fi

	straightcheck1="$num1"
	straightcheck2=$((num2 - 1))
	straightcheck3=$((num3 - 2))
	straightcheck4=$((num4 - 3))
	straightcheck5=$((num5 - 4))
	if [[ straightcheck1 -eq straightcheck2 ]]; then
		if [[ straightcheck2 -eq straightcheck3 ]]; then
			if [[ straightcheck3 -eq straightcheck4 ]]; then
				if [[ straightcheck4 -eq straightcheck5 ]]; then
					straight=1
				fi
			fi
		fi
	fi

	if [[ num1 -eq 1 ]]; then
		if [[ num2 -eq 10 ]]; then
			if [[ num3 -eq 11 ]]; then
				if [[ num4 -eq 12 ]]; then
					if [[ num5 -eq 13 ]]; then
						straight=1
						royal=1
					fi
				fi
			fi
		fi
	fi

	if [[ num1 -eq num2 ]]; then
		if [[ num2 -eq num3 ]]; then
			if [[ num3 -eq num4 ]]; then
				four1=1
			fi
		fi
	fi

	if [[ num2 -eq num3 ]]; then
		if [[ num3 -eq num4 ]]; then
			if [[ num4 -eq num5 ]]; then
				four2=1
			fi
		fi
	fi

	display[0]=":  "
	display[1]=":  "
	display[2]=":  "
	display[3]=":  "
	display[4]=":  "

	[[ "$num1" == "1" ]] && num1="Ace"
	[[ "$num1" == "11" ]] && num1="Jack"
	[[ "$num1" == "12" ]] && num1="Queen"
	[[ "$num1" == "13" ]] && num1="King"

	[[ "$num2" == "1" ]] && num2="Ace"
	[[ "$num2" == "11" ]] && num2="Jack"
	[[ "$num2" == "12" ]] && num2="Queen"
	[[ "$num2" == "13" ]] && num2="King"

	[[ "$num3" == "1" ]] && num3="Ace"
	[[ "$num3" == "11" ]] && num3="Jack"
	[[ "$num3" == "12" ]] && num3="Queen"
	[[ "$num3" == "13" ]] && num3="King"

	[[ "$num4" == "1" ]] && num4="Ace"
	[[ "$num4" == "11" ]] && num4="Jack"
	[[ "$num4" == "12" ]] && num4="Queen"
	[[ "$num4" == "13" ]] && num4="King"

	[[ "$num5" == "1" ]] && num5="Ace"
	[[ "$num5" == "11" ]] && num5="Jack"
	[[ "$num5" == "12" ]] && num5="Queen"
	[[ "$num5" == "13" ]] && num5="King"

}

iswin() {

	flag=0
	high=0
	unset value

	## HIGH CODE
	if [[ "$flag" -eq 0 ]]; then
		flag="High"
		high=1
		value="$num5"
		if [[ "$num1" == "Ace" ]]; then
			value="$num1"
		fi
	fi
	## END HIGH CODE

	## PAIR CODE
	if [[ "$pair1" -eq 1 ]]; then
		flag=Pair
		value="$num1""s"
		display[0]=": +"
		display[1]=": +"

		hold[1]="${mchand[1]}"
		hold[0]="${mchand[0]}"
	fi

	if [[ "$pair2" -eq 1 ]]; then
		flag=Pair
		value="$num2""s"
		display[1]=": +"
		display[2]=": +"

		hold[1]="${mchand[1]}"
		hold[2]="${mchand[2]}"
	fi

	if [[ "$pair3" -eq 1 ]]; then
		flag=Pair
		value="$num3""s"
		display[3]=": +"
		display[2]=": +"

		hold[2]="${mchand[2]}"
		hold[3]="${mchand[3]}"
	fi

	if [[ "$pair4" -eq 1 ]]; then
		flag=Pair
		value="$num4""s"
		display[3]=": +"
		display[4]=": +"

		hold[4]="${mchand[4]}"
		hold[3]="${mchand[3]}"
	fi
	## END PAIR CODE

	## TWO PAIR CODE
	if [[ "$pair1" -eq 1 ]]; then
		if [[ "$pair2" -eq 1 ]]; then
			flag="Two Pair"
			value="$num2""s/""$num1""s"
		fi
	fi
	if [[ "$pair1" -eq 1 ]]; then
		if [[ "$pair3" -eq 1 ]]; then
			flag="Two Pair"
			value="$num3""s/""$num1""s"
		fi
	fi
	if [[ "$pair1" -eq 1 ]]; then
		if [[ "$pair4" -eq 1 ]]; then
			flag="Two Pair"
			value="$num4""s/""$num1""s"
		fi
	fi
	if [[ "$pair2" -eq 1 ]]; then
		if [[ "$pair3" -eq 1 ]]; then
			flag="Two Pair"
			value="$num3""s/""$num2""s"
		fi
	fi
	if [[ "$pair2" -eq 1 ]]; then
		if [[ "$pair4" -eq 1 ]]; then
			flag="Two Pair"
			value="$num4""s/""$num2""s"
		fi
	fi
	if [[ "$pair3" -eq 1 ]]; then
		if [[ "$pair4" -eq 1 ]]; then
			flag="Two Pair"
			value="$num4""s/""$num3""s"
		fi
	fi
	## END TWO PAIR CODE

	## THREE OF A KIND CODE

	if [[ "$three1" -eq 1 ]]; then
		flag="Three of a Kind"
		value="$num1""s"
		display[0]=": +"
		display[1]=": +"
		display[2]=": +"

		hold[1]="${mchand[1]}"
		hold[2]="${mchand[2]}"
		hold[0]="${mchand[0]}"
	fi

	if [[ "$three2" -eq 1 ]]; then
		flag="Three of a Kind"
		value="$num2""s"
		display[3]=": +"
		display[1]=": +"
		display[2]=": +"

		hold[1]="${mchand[1]}"
		hold[2]="${mchand[2]}"
		hold[3]="${mchand[3]}"
	fi

	if [[ "$three3" -eq 1 ]]; then
		flag="Three of a Kind"
		value="$num3""s"
		display[3]=": +"
		display[4]=": +"
		display[2]=": +"

		hold[4]="${mchand[4]}"
		hold[2]="${mchand[2]}"
		hold[3]="${mchand[3]}"
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

		hold[4]="${mchand[4]}"
		hold[1]="${mchand[1]}"
		hold[2]="${mchand[2]}"
		hold[3]="${mchand[3]}"
		hold[0]="${mchand[0]}"
	fi
	## END STRAIGHT CODE

	## FLUSH CODE

	if [[ "$flush" -eq 1 ]]; then
		flag="Flush"
		value="$class1"
		display[0]=": +"
		display[1]=": +"
		display[2]=": +"
		display[3]=": +"
		display[4]=": +"

		hold[4]="${mchand[4]}"
		hold[1]="${mchand[1]}"
		hold[2]="${mchand[2]}"
		hold[3]="${mchand[3]}"
		hold[0]="${mchand[0]}"
	else
		flush=0
	fi
	## END FLUSH CODE

	## FULL HOUSE CODE
	if [[ "$three1" -eq 1 ]]; then
		if [[ "$pair4" -eq 1 ]]; then
			flag="Full House"
			value="$num4""s/""$num1""s"
		fi
	fi
	if [[ "$three3" -eq 1 ]]; then
		if [[ "$pair1" -eq 1 ]]; then
			flag="Full House"
			value="$num3""s/""$num1""s"
		fi
	fi
	## END FULL HOUSE CODE

	## FOUR OF A KIND CODE
	if [[ "$four1" -eq 1 ]]; then
		flag="Four of a Kind"
		value="$num1""s"
		display[0]=": +"
		display[1]=": +"
		display[2]=": +"
		display[3]=": +"

		hold[0]="${mchand[0]}"
		hold[1]="${mchand[1]}"
		hold[2]="${mchand[2]}"
		hold[3]="${mchand[3]}"
	fi

	if [[ "$four2" -eq 1 ]]; then
		flag="Four of a Kind"
		value="$num2""s"
		display[1]=": +"
		display[2]=": +"
		display[3]=": +"
		display[4]=": +"

		hold[4]="${mchand[4]}"
		hold[1]="${mchand[1]}"
		hold[2]="${mchand[2]}"
		hold[3]="${mchand[3]}"
	fi
	## END FOUR OF A KIND CODE

	## STRAIGHT FLUSH CODE
	if [[ "$flush" -eq 1 ]]; then
		if [[ "$straight" -eq 1 ]]; then
			flag="Straight Flush"
		fi
	fi
	## END STRAIGHT FLUSH CODE

	## ROYAL FLUSH CODE
	if [[ "$flush" -eq 1 ]]; then
		if [[ "$royal" -eq 1 ]]; then
			flag="Royal Flush"
		fi
	fi
	## END ROYAL FLUSH CODE

	echo ""
	echo "-------------------------------"
	echo ""

	[[ "$high" -eq 1 ]] && echo "$flag $value"

	[[ "$high" -eq 0 ]] && echo "$value $flag"

	echo ""

}

varhand() {

	hand[0]="$word1"" of ""$class1"
	hand[1]="$word2"" of ""$class2"
	hand[2]="$word3"" of ""$class3"
	hand[3]="$word4"" of ""$class4"
	hand[4]="$word5"" of ""$class5"

}

univarhand() {

	[[ "$class1" == "Hearts" ]] && code1=$(echo -e "\033[1;31m♥\033[0m")
	[[ "$class2" == "Hearts" ]] && code2=$(echo -e "\033[1;31m♥\033[0m")
	[[ "$class3" == "Hearts" ]] && code3=$(echo -e "\033[1;31m♥\033[0m")
	[[ "$class4" == "Hearts" ]] && code4=$(echo -e "\033[1;31m♥\033[0m")
	[[ "$class5" == "Hearts" ]] && code5=$(echo -e "\033[1;31m♥\033[0m")

	[[ "$class1" == "Diamonds" ]] && code1=$(echo -e "\033[1;31m♦\033[0m")
	[[ "$class2" == "Diamonds" ]] && code2=$(echo -e "\033[1;31m♦\033[0m")
	[[ "$class3" == "Diamonds" ]] && code3=$(echo -e "\033[1;31m♦\033[0m")
	[[ "$class4" == "Diamonds" ]] && code4=$(echo -e "\033[1;31m♦\033[0m")
	[[ "$class5" == "Diamonds" ]] && code5=$(echo -e "\033[1;31m♦\033[0m")

	[[ "$class1" == "Spades" ]] && code1="$(echo -e "\033[0;36m♠\033[0m")"
	[[ "$class2" == "Spades" ]] && code2="$(echo -e "\033[0;36m♠\033[0m")"
	[[ "$class3" == "Spades" ]] && code3="$(echo -e "\033[0;36m♠\033[0m")"
	[[ "$class4" == "Spades" ]] && code4="$(echo -e "\033[0;36m♠\033[0m")"
	[[ "$class5" == "Spades" ]] && code5="$(echo -e "\033[0;36m♠\033[0m")"

	[[ "$class1" == "Clubs" ]] && code1="$(echo -e "\033[0;36m♣\033[0m")"
	[[ "$class2" == "Clubs" ]] && code2="$(echo -e "\033[0;36m♣\033[0m")"
	[[ "$class3" == "Clubs" ]] && code3="$(echo -e "\033[0;36m♣\033[0m")"
	[[ "$class4" == "Clubs" ]] && code4="$(echo -e "\033[0;36m♣\033[0m")"
	[[ "$class5" == "Clubs" ]] && code5="$(echo -e "\033[0;36m♣\033[0m")"

	[[ "$class1" == "Hearts" ]] && class1=$(echo -e "\033[1;31m""$word1"" of ""Hearts""\033[0m")
	[[ "$class2" == "Hearts" ]] && class2=$(echo -e "\033[1;31m""$word2"" of ""Hearts""\033[0m")
	[[ "$class3" == "Hearts" ]] && class3=$(echo -e "\033[1;31m""$word3"" of ""Hearts""\033[0m")
	[[ "$class4" == "Hearts" ]] && class4=$(echo -e "\033[1;31m""$word4"" of ""Hearts""\033[0m")
	[[ "$class5" == "Hearts" ]] && class5=$(echo -e "\033[1;31m""$word5"" of ""Hearts""\033[0m")

	[[ "$class1" == "Diamonds" ]] && class1=$(echo -e "\033[1;31m""$word1"" of ""Diamonds""\033[0m")
	[[ "$class2" == "Diamonds" ]] && class2=$(echo -e "\033[1;31m""$word2"" of ""Diamonds""\033[0m")
	[[ "$class3" == "Diamonds" ]] && class3=$(echo -e "\033[1;31m""$word3"" of ""Diamonds""\033[0m")
	[[ "$class4" == "Diamonds" ]] && class4=$(echo -e "\033[1;31m""$word4"" of ""Diamonds""\033[0m")
	[[ "$class5" == "Diamonds" ]] && class5=$(echo -e "\033[1;31m""$word5"" of ""Diamonds""\033[0m")

	[[ "$class1" == "Spades" ]] && class1="$(echo -e "\033[0;36m""$word1"" of ""Spades""\033[0m")"
	[[ "$class2" == "Spades" ]] && class2="$(echo -e "\033[0;36m""$word2"" of ""Spades""\033[0m")"
	[[ "$class3" == "Spades" ]] && class3="$(echo -e "\033[0;36m""$word3"" of ""Spades""\033[0m")"
	[[ "$class4" == "Spades" ]] && class4="$(echo -e "\033[0;36m""$word4"" of ""Spades""\033[0m")"
	[[ "$class5" == "Spades" ]] && class5="$(echo -e "\033[0;36m""$word5"" of ""Spades""\033[0m")"

	[[ "$class1" == "Clubs" ]] && class1="$(echo -e "\033[0;36m""$word1"" of ""Clubs""\033[0m")"
	[[ "$class2" == "Clubs" ]] && class2="$(echo -e "\033[0;36m""$word2"" of ""Clubs""\033[0m")"
	[[ "$class3" == "Clubs" ]] && class3="$(echo -e "\033[0;36m""$word3"" of ""Clubs""\033[0m")"
	[[ "$class4" == "Clubs" ]] && class4="$(echo -e "\033[0;36m""$word4"" of ""Clubs""\033[0m")"
	[[ "$class5" == "Clubs" ]] && class5="$(echo -e "\033[0;36m""$word5"" of ""Clubs""\033[0m")"

	hand[0]="$code1 | ""$class1"
	hand[1]="$code2 | ""$class2"
	hand[2]="$code3 | ""$class3"
	hand[3]="$code4 | ""$class4"
	hand[4]="$code5 | ""$class5"

}

render() {

	echo "1""${display[0]}""${hand[0]}"
	echo "2""${display[1]}""${hand[1]}"
	echo "3""${display[2]}""${hand[2]}"
	echo "4""${display[3]}""${hand[3]}"
	echo "5""${display[4]}""${hand[4]}"
	echo "-------------------------------"

}

hold() {

	if [[ keep -eq 1 ]]; then
		if [[ ! -v "hold[0]" ]]; then
			##	echo "1. hold[0] is not set"
			mchand[0]="${iteration[5]}"
		else
			mchand[0]="${hold[0]}"
		fi
		if [[ ! -v "hold[1]" ]]; then
			##	echo "2. hold[1] is not set"
			mchand[1]="${iteration[6]}"
		else
			mchand[1]="${hold[1]}"
		fi
		if [[ ! -v "hold[2]" ]]; then
			##	echo "3. hold[2] is not set"
			mchand[2]="${iteration[7]}"
		else
			mchand[2]="${hold[2]}"
		fi
		if [[ ! -v "hold[3]" ]]; then
			##	echo "4. hold[3] is not set"
			mchand[3]="${iteration[8]}"
		else
			mchand[3]="${hold[3]}"
		fi
		if [[ ! -v "hold[4]" ]]; then
			##	echo "5. hold[4] is not set"
			mchand[4]="${iteration[9]}"
		else
			mchand[4]="${hold[4]}"
		fi
	fi

}

game() {

	
	
	echo "-------------------------------"
	read -n1 -r -p $'Play Again? [0/1] ' repeat

	index=${#hold[@]}

	if [[ index -ne 0 ]]; then
		unset "hold[@]"
	fi
	echo ""

}

play() {

	freshstart
	shuffle
	deal

	ruffle
	var
	ifcalc
	iswin
	univarhand
	render

	mull

	ruffle
	var
	ifcalc
	iswin
	univarhand
	render

	refresh
	vars

	game

}

clear

vars

play

while [[ $repeat -eq 1 ]]
do
	if [[ ! $repeat -eq 1 ]]
	then
		return 1
	fi
	play
done