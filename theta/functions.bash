#!/bin/bash

freshstart() {

	clear

}

ruffle() {

	IFS=$'\n'
	mapfile -t mchand < <(sort -n <<<"${mchand[*]}")
	unset IFS

}

oldshuffle() {

	IFS=$'\n'
	mapfile -t iteration < <(shuf -e -n10 "${library[@]}")
	unset IFS

}

shuffle() {

	IFS=$'\n'
	mapfile -t used < <(shuf -i 0-51 -n10)
	unset IFS

	for iter in "${used[@]}"; do
		iteration+=("${library[iter]}")
	done

	##  echo "${iteration[@]}"

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
	if [[ "$word1" == "1" ]]; then
		word1="Ace"
	fi
	if [[ "$word1" == "11" ]]; then
		word1="Jack"
	fi
	if [[ "$word1" == "12" ]]; then
		word1="Queen"
	fi
	if [[ "$word1" == "13" ]]; then
		word1="King"
	fi
	word2="${card2%% *}"
	if [[ "$word2" == "1" ]]; then
		word2="Ace"
	fi
	if [[ "$word2" == "11" ]]; then
		word2="Jack"
	fi
	if [[ "$word2" == "12" ]]; then
		word2="Queen"
	fi
	if [[ "$word2" == "13" ]]; then
		word2="King"
	fi
	word3="${card3%% *}"
	if [[ "$word3" == "1" ]]; then
		word3="Ace"
	fi
	if [[ "$word3" == "11" ]]; then
		word3="Jack"
	fi
	if [[ "$word3" == "12" ]]; then
		word3="Queen"
	fi
	if [[ "$word3" == "13" ]]; then
		word3="King"
	fi
	word4="${card4%% *}"
	if [[ "$word4" == "1" ]]; then
		word4="Ace"
	fi
	if [[ "$word4" == "11" ]]; then
		word4="Jack"
	fi
	if [[ "$word4" == "12" ]]; then
		word4="Queen"
	fi
	if [[ "$word4" == "13" ]]; then
		word4="King"
	fi
	word5="${card5%% *}"
	if [[ "$word5" == "1" ]]; then
		word5="Ace"
	fi
	if [[ "$word5" == "11" ]]; then
		word5="Jack"
	fi
	if [[ "$word5" == "12" ]]; then
		word5="Queen"
	fi
	if [[ "$word5" == "13" ]]; then
		word5="King"
	fi

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
		while [[ keep -gt 1 || keep -lt 0 ]]; do
			echo $'>Invalid Input: '
			unset keep
			read -n1 -r -p $'+Keep Suggested? [0/1]: ' keep
		done
	fi

	if [[ keep -eq 1 ]]; then
		hold
	fi

	if [[ keep -eq 0 ]]; then
		if [[ index -ne 0 ]]; then
			echo ""
		fi
	fi

	if [[ index -eq 0 || keep -eq 0 ]]; then
		read -n1 -r -p $'+How Many to Discard? [0-3]: ' dis
		while [[ dis -gt 3 || dis -lt 0 ]]; do
			echo $'>Invalid Input: '
			unset dis
			read -n1 -r -p $'+How Many to Discard? [0-3]: ' dis
		done

		if [[ dis -eq 1 ]]; then
			read -n1 -r -p $'\n|Index Number [1-5]: ' one
			while [[ one -gt 5 || one -lt 1 ]]; do
				echo $'>Invalid Input: '
				unset one
				read -n1 -r -p $'\n|Index Number [1-5]: ' one
			done
			redex
			mchand[one]=${iteration[5]}
		fi

		if [[ dis -eq 2 ]]; then
			read -n1 -r -p $'\n|Index Number [1-5]: ' one
			while [[ one -gt 5 || one -lt 1 ]]; do
				echo $'>Invalid Input: '
				unset one
				read -n1 -r -p $'\n|Index Number [1-5]: ' one
			done
			read -n1 -r -p $'\n|Index Number [1-5]: ' two
			while [[ $two -eq $one ]]; do
				unset two
				read -n1 -r -p $'\n>Invalid, Select. [1-5]: ' two
			done
			redex
			mchand[one]=${iteration[5]}
			mchand[two]=${iteration[6]}
		fi

		if [[ dis -eq 3 ]]; then
			read -n1 -r -p $'\n|Index Number [1-5]: ' one
			while [[ one -gt 5 || one -lt 1 ]]; do
				echo $'>Invalid Input: '
				unset one
				read -n1 -r -p $'\n|Index Number [1-5]: ' one
			done
			read -n1 -r -p $'\n|Index Number [1-5]: ' two
			while [[ $two -eq $one ]]; do
				unset two
				read -n1 -r -p $'\n>Invalid, Select. [1-5]: ' two
			done
			read -n1 -r -p $'\n|Index Number [1-5]: ' three
			while [[ $three -eq $one || $three -eq $two ]]; do
				unset three
				read -n1 -r -p $'\n>Invalid, Select. [1-5]: ' three
			done
			redex
			mchand[one]=${iteration[5]}
			mchand[two]=${iteration[6]}
			mchand[three]=${iteration[7]}
		fi
	fi

	##echo $'\n'

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

}

calc() {

	var

	flush=$(echo "$class1" "$class2" "$class3" "$class4" "$class5" | fmt -1 | uniq | wc -l)

	pair1=$(echo "$num1" "$num2" | fmt -1 | uniq | wc -l)
	pair2=$(echo "$num2" "$num3" | fmt -1 | uniq | wc -l)
	pair3=$(echo "$num3" "$num4" | fmt -1 | uniq | wc -l)
	pair4=$(echo "$num4" "$num5" | fmt -1 | uniq | wc -l)

	three1=$(echo "$num1" "$num2" "$num3" | fmt -1 | uniq | wc -l)
	three2=$(echo "$num2" "$num3" "$num4" | fmt -1 | uniq | wc -l)
	three3=$(echo "$num3" "$num4" "$num5" | fmt -1 | uniq | wc -l)

	straight=$(echo "$num1" $((num2 - 1)) $((num3 - 2)) $((num4 - 3)) $((num5 - 4)) | fmt -1 | uniq | wc -l)

	four1=$(echo "$num1" "$num2" "$num3" "$num4" | fmt -1 | uniq | wc -l)
	four2=$(echo "$num2" "$num3" "$num4" "$num5" | fmt -1 | uniq | wc -l)

	display[0]=":  "
	display[1]=":  "
	display[2]=":  "
	display[3]=":  "
	display[4]=":  "

}

iswinhold() {

	flag=0
	high=0
	unset value
	ifcalc

	## HIGH CODE
	if [[ "$flag" -eq 0 ]]; then
		flag="High"
		high=1
		value="$num5"
		if [[ "$num1" -eq 1 ]]; then
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

	##value=$(echo "$value" | sed 's|10|XX|' | sed 's|13|King|' | sed 's|12|Queen|' | sed 's|11|Jack|' | sed 's|1|Ace|' | sed 's|XX|10|')

	if [[ "$value" == "1s" ]]; then
		value="Aces"
	fi
	if [[ "$value" == "11s" ]]; then
		value="Jacks"
	fi
	if [[ "$value" == "12s" ]]; then
		value="Queens"
	fi
	if [[ "$value" == "13s" ]]; then
		value="Kings"
	fi

	if [[ "$value" == "1" ]]; then
		value="Ace"
	fi
	if [[ "$value" == "11" ]]; then
		value="Jack"
	fi
	if [[ "$value" == "12" ]]; then
		value="Queen"
	fi
	if [[ "$value" == "13" ]]; then
		value="King"
	fi
	
	echo ""
	echo "-------------------------------"
	echo ""

	if [[ "$high" -eq 1 ]]; then
		echo "$flag $value"
	fi
	if [[ "$high" -eq 0 ]]; then
		echo "$value $flag"
	fi

	echo ""

}

wordhand() {

	hand[0]=$(echo "${mchand[0]}" | sed 's|10|XX|' | sed 's|13|King|' | sed 's|12|Queen|' | sed 's|11|Jack|' | sed 's|1|Ace|' | sed 's|XX|10|')
	hand[1]=$(echo "${mchand[1]}" | sed 's|10|XX|' | sed 's|13|King|' | sed 's|12|Queen|' | sed 's|11|Jack|' | sed 's|1|Ace|' | sed 's|XX|10|')
	hand[2]=$(echo "${mchand[2]}" | sed 's|10|XX|' | sed 's|13|King|' | sed 's|12|Queen|' | sed 's|11|Jack|' | sed 's|1|Ace|' | sed 's|XX|10|')
	hand[3]=$(echo "${mchand[3]}" | sed 's|10|XX|' | sed 's|13|King|' | sed 's|12|Queen|' | sed 's|11|Jack|' | sed 's|1|Ace|' | sed 's|XX|10|')
	hand[4]=$(echo "${mchand[4]}" | sed 's|10|XX|' | sed 's|13|King|' | sed 's|12|Queen|' | sed 's|11|Jack|' | sed 's|1|Ace|' | sed 's|XX|10|')

}

varhand() {

	hand[0]="$word1"" of ""$class1"
	hand[1]="$word2"" of ""$class2"
	hand[2]="$word3"" of ""$class3"
	hand[3]="$word4"" of ""$class4"
	hand[4]="$word5"" of ""$class5"

}

numhand() {

	hand[0]=$(echo "${mchand[0]}" | sed 's|King|13|' | sed 's|Queen|12|' | sed 's|Jack|11|' | sed 's|Ace|1|')
	hand[1]=$(echo "${mchand[1]}" | sed 's|King|13|' | sed 's|Queen|12|' | sed 's|Jack|11|' | sed 's|Ace|1|')
	hand[2]=$(echo "${mchand[2]}" | sed 's|King|13|' | sed 's|Queen|12|' | sed 's|Jack|11|' | sed 's|Ace|1|')
	hand[3]=$(echo "${mchand[3]}" | sed 's|King|13|' | sed 's|Queen|12|' | sed 's|Jack|11|' | sed 's|Ace|1|')
	hand[4]=$(echo "${mchand[4]}" | sed 's|King|13|' | sed 's|Queen|12|' | sed 's|Jack|11|' | sed 's|Ace|1|')

}

render() {

	##numhand

	iswinhold

	wordhand

	echo "1""${display[0]}""${hand[0]}"
	echo "2""${display[1]}""${hand[1]}"
	echo "3""${display[2]}""${hand[2]}"
	echo "4""${display[3]}""${hand[3]}"
	echo "5""${display[4]}""${hand[4]}"
	echo "-------------------------------"

}

debugrender() {

	##numhand

	##mchand[4]="${library[12]}"
	##mchand[3]="${library[11]}"
	##mchand[2]="${library[10]}"
	##mchand[1]="${library[9]}"
	##mchand[0]="${library[0]}"

	iswinhold
	varhand
	echo "1""${display[0]}""${hand[0]}"
	echo "2""${display[1]}""${hand[1]}"
	echo "3""${display[2]}""${hand[2]}"
	echo "4""${display[3]}""${hand[3]}"
	echo "5""${display[4]}""${hand[4]}"
	echo "-------------------------------"
	##echo "1""${display[0]}""$word1"" of ""$class1"
	##echo "2""${display[1]}""$word2"" of ""$class2"
	##echo "3""${display[2]}""$word3"" of ""$class3"
	##echo "4""${display[3]}""$word4"" of ""$class4"
	##echo "5""${display[4]}""$word5"" of ""$class5"
	##echo "-------------------------------"
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

debug_game() {

	freshstart
	oldshuffle
	deal
	debugrender
	mull
	debugrender
	##sleep 1
	##source declaration.bash
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
