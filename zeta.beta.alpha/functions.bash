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
	mapfile -t iteration < <(shuf -e "${library[@]}")
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

}

redex() {

	((one--))
	((two--))
	((three--))

}

mull() {

	checkmull=${#hold[@]}
	##	checkmull=0
	if [[ checkmull -ne 0 ]]; then
		read -n1 -r -p $'+Keep Suggested? [0/1]: ' keep
		while [[ keep -gt 1 || keep -lt 0 ]]; do
			echo $'>Invalid Input: '
			read -n1 -r -p $'+Keep Suggested? [0/1]: ' keep
		done
	fi

	if [[ keep -eq 1 ]]; then
		hold
	fi

	if [[ keep -eq 0 ]]; then
		echo ""
	fi

	if [[ checkmull -eq 0 || keep -eq 0 ]]; then
		read -n1 -r -p $'+How Many to Discard? [0-3]: ' dis
		while [[ dis -gt 3 || dis -lt 0 ]]; do
			echo $'>Invalid Input: '
			read -n1 -r -p $'+How Many to Discard? [0-3]: ' dis
		done

		if [[ dis -eq 1 ]]; then
			read -n1 -r -p $'\n|Index Number [1-5]: ' one
			while [[ one -gt 5 || one -lt 1 ]]; do
				echo $'>Invalid Input: '
				read -n1 -r -p $'\n|Index Number [1-5]: ' one
			done
			redex
			mchand[one]=${iteration[5]}
		fi

		if [[ dis -eq 2 ]]; then
			read -n1 -r -p $'\n|Index Number [1-5]: ' one
			while [[ one -gt 5 || one -lt 1 ]]; do
				echo $'>Invalid Input: '
				read -n1 -r -p $'\n|Index Number [1-5]: ' one
			done
			read -n1 -r -p $'\n|Index Number [1-5]: ' two
			while [[ $two -eq $one ]]; do
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
				read -n1 -r -p $'\n|Index Number [1-5]: ' one
			done
			read -n1 -r -p $'\n|Index Number [1-5]: ' two
			while [[ $two -eq $one ]]; do
				read -n1 -r -p $'\n>Invalid, Select. [1-5]: ' two
			done
			read -n1 -r -p $'\n|Index Number [1-5]: ' three
			while [[ $three -eq $one || $three -eq $two ]]; do
				read -n1 -r -p $'\n>Invalid, Select. [1-5]: ' three
			done
			redex
			mchand[one]=${iteration[5]}
			mchand[two]=${iteration[6]}
			mchand[three]=${iteration[7]}
		fi
	fi

	echo $'\n'

	ruffle
	
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

	flag="HIGH"
	calc

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
			value="$num1""s/""$num2""s"
		fi
	fi
	if [[ "$pair1" -eq 1 ]]; then
		if [[ "$pair3" -eq 1 ]]; then
			flag="Two Pair"
			value="$num1""s/""$num3""s"
		fi
	fi
	if [[ "$pair1" -eq 1 ]]; then
		if [[ "$pair4" -eq 1 ]]; then
			flag="Two Pair"
			value="$num1""s/""$num4""s"
		fi
	fi
	if [[ "$pair2" -eq 1 ]]; then
		if [[ "$pair3" -eq 1 ]]; then
			flag="Two Pair"
			value="$num2""s/""$num3""s"
		fi
	fi
	if [[ "$pair2" -eq 1 ]]; then
		if [[ "$pair4" -eq 1 ]]; then
			flag="Two Pair"
			value="$num2""s/""$num4""s"
		fi
	fi
	if [[ "$pair3" -eq 1 ]]; then
		if [[ "$pair4" -eq 1 ]]; then
			flag="Two Pair"
			value="$num3""s/""$num4""s"
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
			value="$num1""s/""$num4""s"
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

	value=$(echo "$value" | sed 's|10|XX|' | sed 's|13|King|' | sed 's|12|Queen|' | sed 's|11|Jack|' | sed 's|1|Ace|' | sed 's|XX|10|')

	##echo $'\n'
	echo "$flag $value"

}

wordhand() {

	hand[0]=$(echo "${mchand[0]}" | sed 's|10|XX|' | sed 's|13|King|' | sed 's|12|Queen|' | sed 's|11|Jack|' | sed 's|1|Ace|' | sed 's|XX|10|')
	hand[1]=$(echo "${mchand[1]}" | sed 's|10|XX|' | sed 's|13|King|' | sed 's|12|Queen|' | sed 's|11|Jack|' | sed 's|1|Ace|' | sed 's|XX|10|')
	hand[2]=$(echo "${mchand[2]}" | sed 's|10|XX|' | sed 's|13|King|' | sed 's|12|Queen|' | sed 's|11|Jack|' | sed 's|1|Ace|' | sed 's|XX|10|')
	hand[3]=$(echo "${mchand[3]}" | sed 's|10|XX|' | sed 's|13|King|' | sed 's|12|Queen|' | sed 's|11|Jack|' | sed 's|1|Ace|' | sed 's|XX|10|')
	hand[4]=$(echo "${mchand[4]}" | sed 's|10|XX|' | sed 's|13|King|' | sed 's|12|Queen|' | sed 's|11|Jack|' | sed 's|1|Ace|' | sed 's|XX|10|')

}

numhand() {

	hand[0]=$(echo "${mchand[0]}" | sed 's|King|13|' | sed 's|Queen|12|' | sed 's|Jack|11|' | sed 's|Ace|1|')
	hand[1]=$(echo "${mchand[1]}" | sed 's|King|13|' | sed 's|Queen|12|' | sed 's|Jack|11|' | sed 's|Ace|1|')
	hand[2]=$(echo "${mchand[2]}" | sed 's|King|13|' | sed 's|Queen|12|' | sed 's|Jack|11|' | sed 's|Ace|1|')
	hand[3]=$(echo "${mchand[3]}" | sed 's|King|13|' | sed 's|Queen|12|' | sed 's|Jack|11|' | sed 's|Ace|1|')
	hand[4]=$(echo "${mchand[4]}" | sed 's|King|13|' | sed 's|Queen|12|' | sed 's|Jack|11|' | sed 's|Ace|1|')

}

render() {

	numhand

	iswinhold
	echo ""

	wordhand

	echo "1""${display[0]}""${hand[0]}"
	echo "2""${display[1]}""${hand[1]}"
	echo "3""${display[2]}""${hand[2]}"
	echo "4""${display[3]}""${hand[3]}"
	echo "5""${display[4]}""${hand[4]}"
	echo "-------------------------------"

}

hold() {

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

}

debug_game() {

	freshstart
	shuffle
	deal
	render
	mull
	render
	sleep 1

	source vars.bash
	read -n1 -r -p $'\nPlay Again? [0/1] ' repeat

	zed=${#hold[@]}

	if [[ zed -ne 0 ]]; then
		unset "hold[@]"
	fi
	echo ""

}
