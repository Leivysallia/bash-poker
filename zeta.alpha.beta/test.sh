#!/bin/bash

clear
codex[0]="1_of_Spades"
codex[1]="2_of_Spades"
codex[2]="3_of_Spades"
codex[3]="4_of_Spades"
codex[4]="5_of_Spades"
codex[5]="6_of_Spades"
codex[6]="7_of_Spades"
codex[7]="8_of_Spades"
codex[8]="9_of_Spades"
codex[9]="10_of_Spades"
codex[10]="11_of_Spades"
codex[11]="12_of_Spades"
codex[12]="13_of_Spades"
codex[13]="13_of_Diamonds"
codex[14]="12_of_Diamonds"
codex[15]="11_of_Diamonds"
codex[16]="10_of_Diamonds"
codex[17]="9_of_Diamonds"
codex[18]="8_of_Diamonds"
codex[19]="7_of_Diamonds"
codex[20]="6_of_Diamonds"
codex[21]="5_of_Diamonds"
codex[22]="4_of_Diamonds"
codex[23]="3_of_Diamonds"
codex[24]="2_of_Diamonds"
codex[25]="1_of_Diamonds"
codex[26]="1_of_Clubs"
codex[27]="2_of_Clubs"
codex[28]="3_of_Clubs"
codex[29]="4_of_Clubs"
codex[30]="5_of_Clubs"
codex[31]="6_of_Clubs"
codex[32]="7_of_Clubs"
codex[33]="8_of_Clubs"
codex[34]="9_of_Clubs"
codex[35]="10_of_Clubs"
codex[36]="11_of_Clubs"
codex[37]="12_of_Clubs"
codex[38]="13_of_Clubs"
codex[39]="13_of_Hearts"
codex[40]="12_of_Hearts"
codex[41]="11_of_Hearts"
codex[42]="10_of_Hearts"
codex[43]="9_of_Hearts"
codex[44]="8_of_Hearts"
codex[45]="7_of_Hearts"
codex[46]="6_of_Hearts"
codex[47]="5_of_Hearts"
codex[48]="4_of_Hearts"
codex[49]="3_of_Hearts"
codex[50]="2_of_Hearts"
codex[51]="1_of_Hearts"


realruffle() {

	mapfile mchand < <(sort -n <<<"${mchand[*]}")
	
}

realshuffle() {

	mapfile iteration < <(shuf -e "${codex[@]}")
	
}

realdeal() {

	mchand[0]="${iteration[0]}"
	mchand[1]="${iteration[1]}"
	mchand[2]="${iteration[2]}"
	mchand[3]="${iteration[3]}"
	mchand[4]="${iteration[4]}"
	
	realruffle

}

realshuffle

for dex in "${!iteration[@]}"
do
newness=$(echo "${iteration[$dex]}" |tr -d '[:space:]')
iteration[dex]="$newness"
done

echo "${iteration[5]}"

unset "codex[@]"
unset "library[@]"
unset "iteration[@]"