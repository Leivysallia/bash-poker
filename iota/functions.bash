#!/bin/bash

freshstart() {

	clear

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

	ruffle

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
	##	index=0
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

	ruffle

}

ifcalc() {

	var

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
	ifcalc

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

	##if [[ "$high" -eq 1 ]]; then
	##	echo "$flag $value"
	##fi
	##if [[ "$high" -eq 0 ]]; then
	##	echo "$value $flag"
	##fi

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

render() {

	iswin
	varhand
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

	freshstart
	shuffle
	deal
	render
	mull
	render

	source reset.bash
	source vars.bash
	echo "-------------------------------"
	read -n1 -r -p $'Play Again? [0/1] ' repeat

	echo "$repeat" >/dev/null

	index=${#hold[@]}

	if [[ index -ne 0 ]]; then
		unset "hold[@]"
	fi
	echo ""

}
