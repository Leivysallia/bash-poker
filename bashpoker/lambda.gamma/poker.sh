#!/bin/bash

freshstart() {

	clear
	printf %s "$default"

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
	magenta=$(tput setaf 1 || tput AF 1)
	cyan=$(tput setaf 6 || tput AF 6)
	default=$(tput op)
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

	if false; then

		acediamonds="$magenta┌┈┈┈┐
    $magenta|♦--|
    $magenta|-A-|
    $magenta|--♦|
    $magenta└┈┈┈┘
$default"
		twodiamonds="$magenta┌┈┈┈┐
    $magenta|♦--|
    $magenta|-2-|
    $magenta|--♦|
    $magenta└┈┈┈┘
$default"
		threediamonds="$magenta┌┈┈┈┐
    $magenta|♦--|
    $magenta|-3-|
    $magenta|--♦|
    $magenta└┈┈┈┘
$default"
		fourdiamonds="$magenta┌┈┈┈┐
    $magenta|♦--|
    $magenta|-4-|
    $magenta|--♦|
    $magenta└┈┈┈┘
$default"
		fivediamonds="$magenta┌┈┈┈┐
    $magenta|♦--|
    $magenta|-5-|
    $magenta|--♦|
    $magenta└┈┈┈┘
$default"
		sixdiamonds="$magenta┌┈┈┈┐
    $magenta|♦--|
    $magenta|-6-|
    $magenta|--♦|
    $magenta└┈┈┈┘
$default"
		sevendiamonds="$magenta┌┈┈┈┐
    $magenta|♦--|
    $magenta|-7-|
    $magenta|--♦|
    $magenta└┈┈┈┘
$default"
		eightdiamonds="$magenta┌┈┈┈┐
    $magenta|♦--|
    $magenta|-8-|
    $magenta|--♦|
    $magenta└┈┈┈┘
$default"
		ninediamonds="$magenta┌┈┈┈┐
    $magenta|♦--|
    $magenta|-9-|
    $magenta|--♦|
    $magenta└┈┈┈┘
$default"
		tendiamonds="$magenta┌┈┈┈┐
    $magenta|♦--|
    $magenta|-X-|
    $magenta|--♦|
    $magenta└┈┈┈┘
$default"
		jackdiamonds="$magenta┌┈┈┈┐
    $magenta|♦--|
    $magenta|-J-|
    $magenta|--♦|
    $magenta└┈┈┈┘
$default"
		queendiamonds="$magentav┌┈┈┈┐
    $magenta|♦--|
    $magenta|-Q-|
    $magenta|--♦|
    $magenta└┈┈┈┘
$default"
		kingdiamonds="$magenta┌┈┈┈┐
    $magenta|♦--|
    $magenta|-K-|
    $magenta|--♦|
    $magenta└┈┈┈┘
$default"
		acehearts="$magenta┌┈┈┈┐
    $magenta|♥--|
    $magenta|-A-|
    $magenta|--♥|
    $magenta└┈┈┈┘
$default"
		twohearts="$magenta┌┈┈┈┐
    $magenta|♥--|
    $magenta|-2-|
    $magenta|--♥|
    $magenta└┈┈┈┘
$default"
		threehearts="$magenta┌┈┈┈┐
    $magenta|♥--|
    $magenta|-3-|
    $magenta|--♥|
    $magenta└┈┈┈┘
$default"
		fourhearts="$magenta┌┈┈┈┐
    $magenta|♥--|
    $magenta|-4-|
    $magenta|--♥|
    $magenta└┈┈┈┘
$default"
		fivehearts="$magenta┌┈┈┈┐
    $magenta|♥--|
    $magenta|-5-|
    $magenta|--♥|
    $magenta└┈┈┈┘
$default"
		sixhearts="$magenta┌┈┈┈┐
    $magenta|♥--|
    $magenta|-6-|
    $magenta|--♥|
    $magenta└┈┈┈┘
$default"
		sevenhearts="$magenta┌┈┈┈┐
    $magenta|♥--|
    $magenta|-7-|
    $magenta|--♥|
    $magenta└┈┈┈┘
$default"
		eighthearts="$magenta┌┈┈┈┐
    $magenta|♥--|
    $magenta|-8-|
    $magenta|--♥|
    $magenta└┈┈┈┘
$default"
		ninehearts="$magenta┌┈┈┈┐
    $magenta|♥--|
    $magenta|-9-|
    $magenta|--♥|
    $magenta└┈┈┈┘
$default"
		tenhearts="$magenta┌┈┈┈┐
    $magenta|♥--|
    $magenta|-X-|
    $magenta|--♥|
    $magenta└┈┈┈┘
$default"
		jackhearts="$magenta┌┈┈┈┐
    $magenta|♥--|
    $magenta|-J-|
    $magenta|--♥|
    $magenta└┈┈┈┘
$default"
		queenhearts="$magenta┌┈┈┈┐
    $magenta|♥--|
    $magenta|-Q-|
    $magenta|--♥|
    $magenta└┈┈┈┘
$default"
		kinghearts="$magenta┌┈┈┈┐
   $magenta |♥--|
    $magenta|-K-|
    $magenta|--♥|
    $magenta└┈┈┈┘
$default"
		acespades="$cyan┌┈┈┈┐
    $cyan|♠--|
    $cyan|-A-|
    $cyan|--♠|
    $cyan└┈┈┈┘
$default"
		twospades="$cyan┌┈┈┈┐
    $cyan|♠--|
    $cyan|-2-|
    $cyan|--♠|
    $cyan└┈┈┈┘
$default"
		threespades="$cyan┌┈┈┈┐
    $cyan|♠--|
    $cyan|-3-|
    $cyan|--♠|
    $cyan└┈┈┈┘
$default"
		fourspades="$cyan┌┈┈┈┐
    $cyan|♠--|
    $cyan|-4-|
    $cyan|--♠|
    $cyan└┈┈┈┘
$default"
		fivespades="$cyan┌┈┈┈┐
    $cyan|♠--|
    $cyan|-5-|
    $cyan|--♠|
    $cyan└┈┈┈┘
$default"
		sixspades="$cyan┌┈┈┈┐
    $cyan|♠--|
    $cyan|-6-|
    $cyan|--♠|
    $cyan└┈┈┈┘
$default"
		sevenspades="$cyan┌┈┈┈┐
    $cyan|♠--|
    $cyan|-7-|
    $cyan|--♠|
    $cyan└┈┈┈┘
$default"
		eightspades="$cyan┌┈┈┈┐
    $cyan|♠--|
    $cyan|-8-|
    $cyan|--♠|
    $cyan└┈┈┈┘
$default"
		ninespades="$cyan┌┈┈┈┐
    $cyan|♠--|
    $cyan|-9-|
    $cyan|--♠|
    $cyan└┈┈┈┘
$default"
		tenspades="$cyan┌┈┈┈┐
    $cyan|♠--|
    $cyan|-X-|
    $cyan|--♠|
    $cyan└┈┈┈┘
$default"
		jackspades="$cyan┌┈┈┈┐
    $cyan|♠--|
    $cyan|-J-|
    $cyan|--♠|
    $cyan└┈┈┈┘
$default"
		queenspades="$cyan┌┈┈┈┐
    $cyan|♠--|
    $cyan|-Q-|
    $cyan|--♠|
    $cyan└┈┈┈┘
$default"
		kingspades="$cyan┌┈┈┈┐
    $cyan|♠--|
    $cyan|-K-|
    $cyan|--♠|
    $cyan└┈┈┈┘
$default"
		aceclubs="$cyan┌┈┈┈┐
    $cyan|♣--|
    $cyan|-A-|
    $cyan|--♣|
    $cyan└┈┈┈┘
$default"
		twoclubs="$cyan┌┈┈┈┐
    $cyan|♣--|
    $cyan|-2-|
    $cyan|--♣|
    $cyan└┈┈┈┘
$default"
		threeclubs="$cyan┌┈┈┈┐
    $cyan|♣--|
    $cyan|-3-|
    $cyan|--♣|
    $cyan└┈┈┈┘
$default"
		fourclubs="$cyan┌┈┈┈┐
    $cyan|♣--|
    $cyan|-4-|
    $cyan|--♣|
    $cyan└┈┈┈┘
$default"
		fiveclubs="$cyan┌┈┈┈┐
    $cyan|♣--|
    $cyan|-5-|
    $cyan|--♣|
    $cyan└┈┈┈┘
$default"
		sixclubs="$cyan┌┈┈┈┐
    $cyan|♣--|
    $cyan|-6-|
    $cyan|--♣|
    $cyan└┈┈┈┘
$default"
		sevenclubs="$cyan┌┈┈┈┐
    $cyan|♣--|
    $cyan|-7-|
    $cyan|--♣|
    $cyan└┈┈┈┘
$default"
		eightclubs="$cyan┌┈┈┈┐
    $cyan|♣--|
    $cyan|-8-|
    $cyan|--♣|
    $cyan└┈┈┈┘
$default"
		nineclubs="$cyan┌┈┈┈┐
    $cyan|♣--|
    $cyan|-9-|
    $cyan|--♣|
    $cyan└┈┈┈┘
$default"
		tenclubs="$cyan┌┈┈┈┐
    $cyan|♣--|
    $cyan|-X-|
    $cyan|--♣|
    $cyan└┈┈┈┘
$default"
		jackclubs="$cyan┌┈┈┈┐
    $cyan|♣--|
    $cyan|-J-|
    $cyan|--♣|
    $cyan└┈┈┈┘
$default"
		queenclubs="$cyan┌┈┈┈┐
    $cyan|♣--|
    $cyan|-Q-|
    $cyan|--♣|
    $cyan└┈┈┈┘
$default"
		kingclubs="$cyan┌┈┈┈┐
    $cyan|♣--|
    $cyan|-K-|
    $cyan|--♣|
    $cyan└┈┈┈┘
$default"
		acediamonds="$magenta$acediamonds"
		twodiamonds="$magenta$twodiamonds"
		threediamonds="$magenta$threediamonds"
		fourdiamonds="$magenta$fourdiamonds"
		fivediamonds="$magenta$fivediamonds"
		sixdiamonds="$magenta$sixdiamonds"
		sevendiamonds="$magenta$sevendiamonds"
		eightdiamonds="$magenta$eightdiamonds"
		ninediamonds="$magenta$ninediamonds"
		tendiamonds="$magenta$tendiamonds"
		jackdiamonds="$magenta$jackdiamonds"
		queendiamonds="$magenta$queendiamonds"
		kingdiamonds="$magenta$kingdiamonds"
		acehearts="$magenta$acehearts"
		twohearts="$magenta$twohearts"
		threehearts="$magenta$threehearts"
		fourhearts="$magenta$fourhearts"
		fivehearts="$magenta$fivehearts"
		sixhearts="$magenta$sixhearts"
		sevenhearts="$magenta$sevenhearts"
		eighthearts="$magenta$eighthearts"
		ninehearts="$magenta$ninehearts"
		tenhearts="$magenta$tenhearts"
		jackhearts="$magenta$jackhearts"
		queenhearts="$magenta$queenhearts"
		kinghearts="$magenta$kinghearts"
		aceclubs="$cyan$aceclubs"
		twoclubs="$cyan$twoclubs"
		threeclubs="$cyan$threeclubs"
		fourclubs="$cyan$fourclubs"
		fiveclubs="$cyan$fiveclubs"
		sixclubs="$cyan$sixclubs"
		sevenclubs="$cyan$sevenclubs"
		eightclubs="$cyan$eightclubs"
		nineclubs="$cyan$nineclubs"
		tenclubs="$cyan$tenclubs"
		jackclubs="$cyan$jackclubs"
		queenclubs="$cyan$queenclubs"
		kingclubs="$cyan$kingclubs"
		acespades="$cyan$acespades"
		twospades="$cyan$twospades"
		threespades="$cyan$threespades"
		fourspades="$cyan$fourspades"
		fivespades="$cyan$fivespades"
		sixspades="$cyan$sixspades"
		sevenspades="$cyan$sevenspades"
		eightspades="$cyan$eightspades"
		ninespades="$cyan$ninespades"
		tenspades="$cyan$tenspades"
		jackspades="$cyan$jackspades"
		queenspades="$cyan$queenspades"
		kingspades="$cyan$kingspades"

		acediamonds=$(echo -e "\033[1;31m$acediamonds\033[0m")
		twodiamonds=$(echo -e "\033[1;31m$twodiamonds\033[0m")
		threediamonds=$(echo -e "\033[1;31m$threediamonds\033[0m")
		fourdiamonds=$(echo -e "\033[1;31m$fourdiamonds\033[0m")
		fivediamonds=$(echo -e "\033[1;31m$fivediamonds\033[0m")
		sixdiamonds=$(echo -e "\033[1;31m$sixdiamonds\033[0m")
		sevendiamonds=$(echo -e "\033[1;31m$sevendiamonds\033[0m")
		eightdiamonds=$(echo -e "\033[1;31m$eightdiamonds\033[0m")
		ninediamonds=$(echo -e "\033[1;31m$ninediamonds\033[0m")
		tendiamonds=$(echo -e "\033[1;31m$tendiamonds\033[0m")
		jackdiamonds=$(echo -e "\033[1;31m$jackdiamonds\033[0m")
		queendiamonds=$(echo -e "\033[1;31m$queendiamonds\033[0m")
		kingdiamonds=$(echo -e "\033[1;31m$kingdiamonds\033[0m")
		acehearts=$(echo -e "\033[1;31m$acehearts\033[0m")
		twohearts=$(echo -e "\033[1;31m$twohearts\033[0m")
		threehearts=$(echo -e "\033[1;31m$threehearts\033[0m")
		fourhearts=$(echo -e "\033[1;31m$fourhearts\033[0m")
		fivehearts=$(echo -e "\033[1;31m$fivehearts\033[0m")
		sixhearts=$(echo -e "\033[1;31m$sixhearts\033[0m")
		sevenhearts=$(echo -e "\033[1;31m$sevenhearts\033[0m")
		eighthearts=$(echo -e "\033[1;31m$eighthearts\033[0m")
		ninehearts=$(echo -e "\033[1;31m$ninehearts\033[0m")
		tenhearts=$(echo -e "\033[1;31m$tenhearts\033[0m")
		jackhearts=$(echo -e "\033[1;31m$jackhearts\033[0m")
		queenhearts=$(echo -e "\033[1;31m$queenhearts\033[0m")
		kinghearts=$(echo -e "\033[1;31m$kinghearts\033[0m")
		aceclubs=$(echo -e "\033[0;36m$aceclubs\033[0m")
		twoclubs=$(echo -e "\033[0;36m$twoclubs\033[0m")
		threeclubs=$(echo -e "\033[0;36m$threeclubs\033[0m")
		fourclubs=$(echo -e "\033[0;36m$fourclubs\033[0m")
		fiveclubs=$(echo -e "\033[0;36m$fiveclubs\033[0m")
		sixclubs=$(echo -e "\033[0;36m$sixclubs\033[0m")
		sevenclubs=$(echo -e "\033[0;36m$sevenclubs\033[0m")
		eightclubs=$(echo -e "\033[0;36m$eightclubs\033[0m")
		nineclubs=$(echo -e "\033[0;36m$nineclubs\033[0m")
		tenclubs=$(echo -e "\033[0;36m$tenclubs\033[0m")
		jackclubs=$(echo -e "\033[0;36m$jackclubs\033[0m")
		queenclubs=$(echo -e "\033[0;36m$queenclubs\033[0m")
		kingclubs=$(echo -e "\033[0;36m$kingclubs\033[0m")
		acespades=$(echo -e "\033[0;36m$acespades\033[0m")
		twospades=$(echo -e "\033[0;36m$twospades\033[0m")
		threespades=$(echo -e "\033[0;36m$threespades\033[0m")
		fourspades=$(echo -e "\033[0;36m$fourspades\033[0m")
		fivespades=$(echo -e "\033[0;36m$fivespades\033[0m")
		sixspades=$(echo -e "\033[0;36m$sixspades\033[0m")
		sevenspades=$(echo -e "\033[0;36m$sevenspades\033[0m")
		eightspades=$(echo -e "\033[0;36m$eightspades\033[0m")
		ninespades=$(echo -e "\033[0;36m$ninespades\033[0m")
		tenspades=$(echo -e "\033[0;36m$tenspades\033[0m")
		jackspades=$(echo -e "\033[0;36m$jackspades\033[0m")
		queenspades=$(echo -e "\033[0;36m$queenspades\033[0m")
		kingspades=$(echo -e "\033[0;36m$kingspades\033[0m")
	fi

	acediamonds="$magenta┌┈┈┈┐
$magenta|♦--|
$magenta|-A-|
$magenta|--♦|
$magenta└┈┈┈┘
$default"
	twodiamonds="$magenta┌┈┈┈┐
$magenta|♦--|
$magenta|-2-|
$magenta|--♦|
$magenta└┈┈┈┘
$default"
	threediamonds="$magenta┌┈┈┈┐
$magenta|♦--|
$magenta|-3-|
$magenta|--♦|
$magenta└┈┈┈┘
$default"
	fourdiamonds="$magenta┌┈┈┈┐
$magenta|♦--|
$magenta|-4-|
$magenta|--♦|
$magenta└┈┈┈┘
$default"
	fivediamonds="$magenta┌┈┈┈┐
$magenta|♦--|
$magenta|-5-|
$magenta|--♦|
$magenta└┈┈┈┘
$default"
	sixdiamonds="$magenta┌┈┈┈┐
$magenta|♦--|
$magenta|-6-|
$magenta|--♦|
$magenta└┈┈┈┘
$default"
	sevendiamonds="$magenta┌┈┈┈┐
$magenta|♦--|
$magenta|-7-|
$magenta|--♦|
$magenta└┈┈┈┘
$default"
	eightdiamonds="$magenta┌┈┈┈┐
$magenta|♦--|
$magenta|-8-|
$magenta|--♦|
$magenta└┈┈┈┘
$default"
	ninediamonds="$magenta┌┈┈┈┐
$magenta|♦--|
$magenta|-9-|
$magenta|--♦|
$magenta└┈┈┈┘
$default"
	tendiamonds="$magenta┌┈┈┈┐
$magenta|♦--|
$magenta|-X-|
$magenta|--♦|
$magenta└┈┈┈┘
$default"
	jackdiamonds="$magenta┌┈┈┈┐
$magenta|♦--|
$magenta|-J-|
$magenta|--♦|
$magenta└┈┈┈┘
$default"
	queendiamonds="$magentav┌┈┈┈┐
$magenta|♦--|
$magenta|-Q-|
$magenta|--♦|
$magenta└┈┈┈┘
$default"
	kingdiamonds="$magenta┌┈┈┈┐
$magenta|♦--|
$magenta|-K-|
$magenta|--♦|
$magenta└┈┈┈┘
$default"
	acehearts="$magenta┌┈┈┈┐
$magenta|♥--|
$magenta|-A-|
$magenta|--♥|
$magenta└┈┈┈┘
$default"
	twohearts="$magenta┌┈┈┈┐
$magenta|♥--|
$magenta|-2-|
$magenta|--♥|
$magenta└┈┈┈┘
$default"
	threehearts="$magenta┌┈┈┈┐
$magenta|♥--|
$magenta|-3-|
$magenta|--♥|
$magenta└┈┈┈┘
$default"
	fourhearts="$magenta┌┈┈┈┐
$magenta|♥--|
$magenta|-4-|
$magenta|--♥|
$magenta└┈┈┈┘
$default"
	fivehearts="$magenta┌┈┈┈┐
$magenta|♥--|
$magenta|-5-|
$magenta|--♥|
$magenta└┈┈┈┘
$default"
	sixhearts="$magenta┌┈┈┈┐
$magenta|♥--|
$magenta|-6-|
$magenta|--♥|
$magenta└┈┈┈┘
$default"
	sevenhearts="$magenta┌┈┈┈┐
$magenta|♥--|
$magenta|-7-|
$magenta|--♥|
$magenta└┈┈┈┘
$default"
	eighthearts="$magenta┌┈┈┈┐
$magenta|♥--|
$magenta|-8-|
$magenta|--♥|
$magenta└┈┈┈┘
$default"
	ninehearts="$magenta┌┈┈┈┐
$magenta|♥--|
$magenta|-9-|
$magenta|--♥|
$magenta└┈┈┈┘
$default"
	tenhearts="$magenta┌┈┈┈┐
$magenta|♥--|
$magenta|-X-|
$magenta|--♥|
$magenta└┈┈┈┘
$default"
	jackhearts="$magenta┌┈┈┈┐
$magenta|♥--|
$magenta|-J-|
$magenta|--♥|
$magenta└┈┈┈┘
$default"
	queenhearts="$magenta┌┈┈┈┐
$magenta|♥--|
$magenta|-Q-|
$magenta|--♥|
$magenta└┈┈┈┘
$default"
	kinghearts="$magenta┌┈┈┈┐
$magenta|♥--|
$magenta|-K-|
$magenta|--♥|
$magenta└┈┈┈┘
$default"
	acespades="$cyan┌┈┈┈┐
$cyan|♠--|
$cyan|-A-|
$cyan|--♠|
$cyan└┈┈┈┘
$default"
	twospades="$cyan┌┈┈┈┐
$cyan|♠--|
$cyan|-2-|
$cyan|--♠|
$cyan└┈┈┈┘
$default"
	threespades="$cyan┌┈┈┈┐
$cyan|♠--|
$cyan|-3-|
$cyan|--♠|
$cyan└┈┈┈┘
$default"
	fourspades="$cyan┌┈┈┈┐
$cyan|♠--|
$cyan|-4-|
$cyan|--♠|
$cyan└┈┈┈┘
$default"
	fivespades="$cyan┌┈┈┈┐
$cyan|♠--|
$cyan|-5-|
$cyan|--♠|
$cyan└┈┈┈┘
$default"
	sixspades="$cyan┌┈┈┈┐
$cyan|♠--|
$cyan|-6-|
$cyan|--♠|
$cyan└┈┈┈┘
$default"
	sevenspades="$cyan┌┈┈┈┐
$cyan|♠--|
$cyan|-7-|
$cyan|--♠|
$cyan└┈┈┈┘
$default"
	eightspades="$cyan┌┈┈┈┐
$cyan|♠--|
$cyan|-8-|
$cyan|--♠|
$cyan└┈┈┈┘
$default"
	ninespades="$cyan┌┈┈┈┐
$cyan|♠--|
$cyan|-9-|
$cyan|--♠|
$cyan└┈┈┈┘
$default"
	tenspades="$cyan┌┈┈┈┐
$cyan|♠--|
$cyan|-X-|
$cyan|--♠|
$cyan└┈┈┈┘
$default"
	jackspades="$cyan┌┈┈┈┐
$cyan|♠--|
$cyan|-J-|
$cyan|--♠|
$cyan└┈┈┈┘
$default"
	queenspades="$cyan┌┈┈┈┐
$cyan|♠--|
$cyan|-Q-|
$cyan|--♠|
$cyan└┈┈┈┘
$default"
	kingspades="$cyan┌┈┈┈┐
$cyan|♠--|
$cyan|-K-|
$cyan|--♠|
$cyan└┈┈┈┘
$default"
	aceclubs="$cyan┌┈┈┈┐
$cyan|♣--|
$cyan|-A-|
$cyan|--♣|
$cyan└┈┈┈┘
$default"
	twoclubs="$cyan┌┈┈┈┐
$cyan|♣--|
$cyan|-2-|
$cyan|--♣|
$cyan└┈┈┈┘
$default"
	threeclubs="$cyan┌┈┈┈┐
$cyan|♣--|
$cyan|-3-|
$cyan|--♣|
$cyan└┈┈┈┘
$default"
	fourclubs="$cyan┌┈┈┈┐
$cyan|♣--|
$cyan|-4-|
$cyan|--♣|
$cyan└┈┈┈┘
$default"
	fiveclubs="$cyan┌┈┈┈┐
$cyan|♣--|
$cyan|-5-|
$cyan|--♣|
$cyan└┈┈┈┘
$default"
	sixclubs="$cyan┌┈┈┈┐
$cyan|♣--|
$cyan|-6-|
$cyan|--♣|
$cyan└┈┈┈┘
$default"
	sevenclubs="$cyan┌┈┈┈┐
$cyan|♣--|
$cyan|-7-|
$cyan|--♣|
$cyan└┈┈┈┘
$default"
	eightclubs="$cyan┌┈┈┈┐
$cyan|♣--|
$cyan|-8-|
$cyan|--♣|
$cyan└┈┈┈┘
$default"
	nineclubs="$cyan┌┈┈┈┐
$cyan|♣--|
$cyan|-9-|
$cyan|--♣|
$cyan└┈┈┈┘
$default"
	tenclubs="$cyan┌┈┈┈┐
$cyan|♣--|
$cyan|-X-|
$cyan|--♣|
$cyan└┈┈┈┘
$default"
	jackclubs="$cyan┌┈┈┈┐
$cyan|♣--|
$cyan|-J-|
$cyan|--♣|
$cyan└┈┈┈┘
$default"
	queenclubs="$cyan┌┈┈┈┐
$cyan|♣--|
$cyan|-Q-|
$cyan|--♣|
$cyan└┈┈┈┘
$default"
	kingclubs="$cyan┌┈┈┈┐
$cyan|♣--|
$cyan|-K-|
$cyan|--♣|
$cyan└┈┈┈┘
$default"

	display[0]="__ "
	display[1]="__ "
	display[2]="__ "
	display[3]="__ "
	display[4]="__ "

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

	display[0]="__ "
	display[1]="__ "
	display[2]="__ "
	display[3]="__ "
	display[4]="__ "

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
		display[0]="|=|"
		display[1]="|=|"

		hold[1]="${mchand[1]}"
		hold[0]="${mchand[0]}"
	fi

	if [[ "$pair2" -eq 1 ]]; then
		flag=Pair
		value="$num2""s"
		display[1]="|=|"
		display[2]="|=|"

		hold[1]="${mchand[1]}"
		hold[2]="${mchand[2]}"
	fi

	if [[ "$pair3" -eq 1 ]]; then
		flag=Pair
		value="$num3""s"
		display[3]="|=|"
		display[2]="|=|"

		hold[2]="${mchand[2]}"
		hold[3]="${mchand[3]}"
	fi

	if [[ "$pair4" -eq 1 ]]; then
		flag=Pair
		value="$num4""s"
		display[3]="|=|"
		display[4]="|=|"

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
		display[0]="|=|"
		display[1]="|=|"
		display[2]="|=|"

		hold[1]="${mchand[1]}"
		hold[2]="${mchand[2]}"
		hold[0]="${mchand[0]}"
	fi

	if [[ "$three2" -eq 1 ]]; then
		flag="Three of a Kind"
		value="$num2""s"
		display[3]="|=|"
		display[1]="|=|"
		display[2]="|=|"

		hold[1]="${mchand[1]}"
		hold[2]="${mchand[2]}"
		hold[3]="${mchand[3]}"
	fi

	if [[ "$three3" -eq 1 ]]; then
		flag="Three of a Kind"
		value="$num3""s"
		display[3]="|=|"
		display[4]="|=|"
		display[2]="|=|"

		hold[4]="${mchand[4]}"
		hold[2]="${mchand[2]}"
		hold[3]="${mchand[3]}"
	fi
	## END THREE OF A KIND CODE

	## STRAIGHT CODE

	if [[ "$straight" -eq 1 ]]; then
		flag="Straight"
		value="$num5"
		if [[ $num2 -eq 10 ]]; then
			value="$num1"
		fi
		display[3]="|=|"
		display[4]="|=|"
		display[0]="|=|"
		display[1]="|=|"
		display[2]="|=|"

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
		display[0]="|=|"
		display[1]="|=|"
		display[2]="|=|"
		display[3]="|=|"
		display[4]="|=|"

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
		display[0]="|=|"
		display[1]="|=|"
		display[2]="|=|"
		display[3]="|=|"

		hold[0]="${mchand[0]}"
		hold[1]="${mchand[1]}"
		hold[2]="${mchand[2]}"
		hold[3]="${mchand[3]}"
	fi

	if [[ "$four2" -eq 1 ]]; then
		flag="Four of a Kind"
		value="$num2""s"
		display[1]="|=|"
		display[2]="|=|"
		display[3]="|=|"
		display[4]="|=|"

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

cardvarhand() {

	[[ word1 -eq 2 ]] && word1=two
	[[ word1 -eq 3 ]] && word1=three
	[[ word1 -eq 4 ]] && word1=four
	[[ word1 -eq 5 ]] && word1=five
	[[ word1 -eq 6 ]] && word1=six
	[[ word1 -eq 7 ]] && word1=seven
	[[ word1 -eq 8 ]] && word1=eight
	[[ word1 -eq 9 ]] && word1=nine
	[[ word1 -eq 10 ]] && word1=ten
	[[ word2 -eq 2 ]] && word2=two
	[[ word2 -eq 3 ]] && word2=three
	[[ word2 -eq 4 ]] && word2=four
	[[ word2 -eq 5 ]] && word2=five
	[[ word2 -eq 6 ]] && word2=six
	[[ word2 -eq 7 ]] && word2=seven
	[[ word2 -eq 8 ]] && word2=eight
	[[ word2 -eq 9 ]] && word2=nine
	[[ word2 -eq 10 ]] && word2=ten
	[[ word3 -eq 2 ]] && word3=two
	[[ word3 -eq 3 ]] && word3=three
	[[ word3 -eq 4 ]] && word3=four
	[[ word3 -eq 5 ]] && word3=five
	[[ word3 -eq 6 ]] && word3=six
	[[ word3 -eq 7 ]] && word3=seven
	[[ word3 -eq 8 ]] && word3=eight
	[[ word3 -eq 9 ]] && word3=nine
	[[ word3 -eq 10 ]] && word3=ten
	[[ word4 -eq 2 ]] && word4=two
	[[ word4 -eq 3 ]] && word4=three
	[[ word4 -eq 4 ]] && word4=four
	[[ word4 -eq 5 ]] && word4=five
	[[ word4 -eq 6 ]] && word4=six
	[[ word4 -eq 7 ]] && word4=seven
	[[ word4 -eq 8 ]] && word4=eight
	[[ word4 -eq 9 ]] && word4=nine
	[[ word4 -eq 10 ]] && word4=ten
	[[ word5 -eq 2 ]] && word5=two
	[[ word5 -eq 3 ]] && word5=three
	[[ word5 -eq 4 ]] && word5=four
	[[ word5 -eq 5 ]] && word5=five
	[[ word5 -eq 6 ]] && word5=six
	[[ word5 -eq 7 ]] && word5=seven
	[[ word5 -eq 8 ]] && word5=eight
	[[ word5 -eq 9 ]] && word5=nine
	[[ word5 -eq 10 ]] && word5=ten

	handzero=$(echo "$word1$class1" | tr '[:upper:]' '[:lower:]')
	handone=$(echo "$word2$class2" | tr '[:upper:]' '[:lower:]')
	handtwo=$(echo "$word3$class3" | tr '[:upper:]' '[:lower:]')
	handthree=$(echo "$word4$class4" | tr '[:upper:]' '[:lower:]')
	handfour=$(echo "$word5$class5" | tr '[:upper:]' '[:lower:]')

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

cardrender() {

	if false; then
		[[ "${hand[0]}" == "acespades" ]] && hand[0]=$acespades
		[[ "${hand[0]}" == "twospades" ]] && hand[0]=$twospades
		[[ "${hand[0]}" == "threespades" ]] && hand[0]=$threespades
		[[ "${hand[0]}" == "fourspades" ]] && hand[0]=$fourspades
		[[ "${hand[0]}" == "fivespades" ]] && hand[0]=$fivespades
		[[ "${hand[0]}" == "sixspades" ]] && hand[0]=$sixspades
		[[ "${hand[0]}" == "sevenspades" ]] && hand[0]=$sevenspades
		[[ "${hand[0]}" == "eightspades" ]] && hand[0]=$eightspades
		[[ "${hand[0]}" == "ninespades" ]] && hand[0]=$ninespades
		[[ "${hand[0]}" == "tenspades" ]] && hand[0]=$tenspades
		[[ "${hand[0]}" == "jackspades" ]] && hand[0]=$jackspades
		[[ "${hand[0]}" == "queenspades" ]] && hand[0]=$queenspades
		[[ "${hand[0]}" == "kingspades" ]] && hand[0]=$kingspades
		[[ "${hand[0]}" == "aceclubs" ]] && hand[0]=$aceclubs
		[[ "${hand[0]}" == "twoclubs" ]] && hand[0]=$twoclubs
		[[ "${hand[0]}" == "threeclubs" ]] && hand[0]=$threeclubs
		[[ "${hand[0]}" == "fourclubs" ]] && hand[0]=$fourclubs
		[[ "${hand[0]}" == "fiveclubs" ]] && hand[0]=$fiveclubs
		[[ "${hand[0]}" == "sixclubs" ]] && hand[0]=$sixclubs
		[[ "${hand[0]}" == "sevenclubs" ]] && hand[0]=$sevenclubs
		[[ "${hand[0]}" == "eightclubs" ]] && hand[0]=$eightclubs
		[[ "${hand[0]}" == "nineclubs" ]] && hand[0]=$nineclubs
		[[ "${hand[0]}" == "tenclubs" ]] && hand[0]=$tenclubs
		[[ "${hand[0]}" == "jackclubs" ]] && hand[0]=$jackclubs
		[[ "${hand[0]}" == "queenclubs" ]] && hand[0]=$queenclubs
		[[ "${hand[0]}" == "kingclubs" ]] && hand[0]=$kingclubs
		[[ "${hand[0]}" == "acediamonds" ]] && hand[0]=$acediamonds
		[[ "${hand[0]}" == "twodiamonds" ]] && hand[0]=$twodiamonds
		[[ "${hand[0]}" == "threediamonds" ]] && hand[0]=$threediamonds
		[[ "${hand[0]}" == "fourdiamonds" ]] && hand[0]=$fourdiamonds
		[[ "${hand[0]}" == "fivediamonds" ]] && hand[0]=$fivediamonds
		[[ "${hand[0]}" == "sixdiamonds" ]] && hand[0]=$sixdiamonds
		[[ "${hand[0]}" == "sevendiamonds" ]] && hand[0]=$sevendiamonds
		[[ "${hand[0]}" == "eightdiamonds" ]] && hand[0]=$eightdiamonds
		[[ "${hand[0]}" == "ninediamonds" ]] && hand[0]=$ninediamonds
		[[ "${hand[0]}" == "tendiamonds" ]] && hand[0]=$tendiamonds
		[[ "${hand[0]}" == "jackdiamonds" ]] && hand[0]=$jackdiamonds
		[[ "${hand[0]}" == "queendiamonds" ]] && hand[0]=$queendiamonds
		[[ "${hand[0]}" == "kingdiamonds" ]] && hand[0]=$kingdiamonds
		[[ "${hand[0]}" == "acehearts" ]] && hand[0]=$acehearts
		[[ "${hand[0]}" == "twohearts" ]] && hand[0]=$twohearts
		[[ "${hand[0]}" == "threehearts" ]] && hand[0]=$threehearts
		[[ "${hand[0]}" == "fourhearts" ]] && hand[0]=$fourhearts
		[[ "${hand[0]}" == "fivehearts" ]] && hand[0]=$fivehearts
		[[ "${hand[0]}" == "sixhearts" ]] && hand[0]=$sixhearts
		[[ "${hand[0]}" == "sevenhearts" ]] && hand[0]=$sevenhearts
		[[ "${hand[0]}" == "eighthearts" ]] && hand[0]=$eighthearts
		[[ "${hand[0]}" == "ninehearts" ]] && hand[0]=$ninehearts
		[[ "${hand[0]}" == "tenhearts" ]] && hand[0]=$tenhearts
		[[ "${hand[0]}" == "jackhearts" ]] && hand[0]=$jackhearts
		[[ "${hand[0]}" == "queenhearts" ]] && hand[0]=$queenhearts
		[[ "${hand[0]}" == "kinghearts" ]] && hand[0]=$kinghearts
		[[ "${hand[1]}" == "acespades" ]] && hand[1]=$acespades
		[[ "${hand[1]}" == "twospades" ]] && hand[1]=$twospades
		[[ "${hand[1]}" == "threespades" ]] && hand[1]=$threespades
		[[ "${hand[1]}" == "fourspades" ]] && hand[1]=$fourspades
		[[ "${hand[1]}" == "fivespades" ]] && hand[1]=$fivespades
		[[ "${hand[1]}" == "sixspades" ]] && hand[1]=$sixspades
		[[ "${hand[1]}" == "sevenspades" ]] && hand[1]=$sevenspades
		[[ "${hand[1]}" == "eightspades" ]] && hand[1]=$eightspades
		[[ "${hand[1]}" == "ninespades" ]] && hand[1]=$ninespades
		[[ "${hand[1]}" == "tenspades" ]] && hand[1]=$tenspades
		[[ "${hand[1]}" == "jackspades" ]] && hand[1]=$jackspades
		[[ "${hand[1]}" == "queenspades" ]] && hand[1]=$queenspades
		[[ "${hand[1]}" == "kingspades" ]] && hand[1]=$kingspades
		[[ "${hand[1]}" == "aceclubs" ]] && hand[1]=$aceclubs
		[[ "${hand[1]}" == "twoclubs" ]] && hand[1]=$twoclubs
		[[ "${hand[1]}" == "threeclubs" ]] && hand[1]=$threeclubs
		[[ "${hand[1]}" == "fourclubs" ]] && hand[1]=$fourclubs
		[[ "${hand[1]}" == "fiveclubs" ]] && hand[1]=$fiveclubs
		[[ "${hand[1]}" == "sixclubs" ]] && hand[1]=$sixclubs
		[[ "${hand[1]}" == "sevenclubs" ]] && hand[1]=$sevenclubs
		[[ "${hand[1]}" == "eightclubs" ]] && hand[1]=$eightclubs
		[[ "${hand[1]}" == "nineclubs" ]] && hand[1]=$nineclubs
		[[ "${hand[1]}" == "tenclubs" ]] && hand[1]=$tenclubs
		[[ "${hand[1]}" == "jackclubs" ]] && hand[1]=$jackclubs
		[[ "${hand[1]}" == "queenclubs" ]] && hand[1]=$queenclubs
		[[ "${hand[1]}" == "kingclubs" ]] && hand[1]=$kingclubs
		[[ "${hand[1]}" == "acediamonds" ]] && hand[1]=$acediamonds
		[[ "${hand[1]}" == "twodiamonds" ]] && hand[1]=$twodiamonds
		[[ "${hand[1]}" == "threediamonds" ]] && hand[1]=$threediamonds
		[[ "${hand[1]}" == "fourdiamonds" ]] && hand[1]=$fourdiamonds
		[[ "${hand[1]}" == "fivediamonds" ]] && hand[1]=$fivediamonds
		[[ "${hand[1]}" == "sixdiamonds" ]] && hand[1]=$sixdiamonds
		[[ "${hand[1]}" == "sevendiamonds" ]] && hand[1]=$sevendiamonds
		[[ "${hand[1]}" == "eightdiamonds" ]] && hand[1]=$eightdiamonds
		[[ "${hand[1]}" == "ninediamonds" ]] && hand[1]=$ninediamonds
		[[ "${hand[1]}" == "tendiamonds" ]] && hand[1]=$tendiamonds
		[[ "${hand[1]}" == "jackdiamonds" ]] && hand[1]=$jackdiamonds
		[[ "${hand[1]}" == "queendiamonds" ]] && hand[1]=$queendiamonds
		[[ "${hand[1]}" == "kingdiamonds" ]] && hand[1]=$kingdiamonds
		[[ "${hand[1]}" == "acehearts" ]] && hand[1]=$acehearts
		[[ "${hand[1]}" == "twohearts" ]] && hand[1]=$twohearts
		[[ "${hand[1]}" == "threehearts" ]] && hand[1]=$threehearts
		[[ "${hand[1]}" == "fourhearts" ]] && hand[1]=$fourhearts
		[[ "${hand[1]}" == "fivehearts" ]] && hand[1]=$fivehearts
		[[ "${hand[1]}" == "sixhearts" ]] && hand[1]=$sixhearts
		[[ "${hand[1]}" == "sevenhearts" ]] && hand[1]=$sevenhearts
		[[ "${hand[1]}" == "eighthearts" ]] && hand[1]=$eighthearts
		[[ "${hand[1]}" == "ninehearts" ]] && hand[1]=$ninehearts
		[[ "${hand[1]}" == "tenhearts" ]] && hand[1]=$tenhearts
		[[ "${hand[1]}" == "jackhearts" ]] && hand[1]=$jackhearts
		[[ "${hand[1]}" == "queenhearts" ]] && hand[1]=$queenhearts
		[[ "${hand[1]}" == "kinghearts" ]] && hand[1]=$kinghearts
		[[ "${hand[1]}" == "acespades" ]] && hand[1]=$acespades
		[[ "${hand[1]}" == "twospades" ]] && hand[1]=$twospades
		[[ "${hand[1]}" == "threespades" ]] && hand[1]=$threespades
		[[ "${hand[1]}" == "fourspades" ]] && hand[1]=$fourspades
		[[ "${hand[1]}" == "fivespades" ]] && hand[1]=$fivespades
		[[ "${hand[1]}" == "sixspades" ]] && hand[1]=$sixspades
		[[ "${hand[1]}" == "sevenspades" ]] && hand[1]=$sevenspades
		[[ "${hand[1]}" == "eightspades" ]] && hand[1]=$eightspades
		[[ "${hand[1]}" == "ninespades" ]] && hand[1]=$ninespades
		[[ "${hand[1]}" == "tenspades" ]] && hand[1]=$tenspades
		[[ "${hand[1]}" == "jackspades" ]] && hand[1]=$jackspades
		[[ "${hand[1]}" == "queenspades" ]] && hand[1]=$queenspades
		[[ "${hand[1]}" == "kingspades" ]] && hand[1]=$kingspades
		[[ "${hand[1]}" == "aceclubs" ]] && hand[1]=$aceclubs
		[[ "${hand[1]}" == "twoclubs" ]] && hand[1]=$twoclubs
		[[ "${hand[1]}" == "threeclubs" ]] && hand[1]=$threeclubs
		[[ "${hand[1]}" == "fourclubs" ]] && hand[1]=$fourclubs
		[[ "${hand[1]}" == "fiveclubs" ]] && hand[1]=$fiveclubs
		[[ "${hand[1]}" == "sixclubs" ]] && hand[1]=$sixclubs
		[[ "${hand[1]}" == "sevenclubs" ]] && hand[1]=$sevenclubs
		[[ "${hand[1]}" == "eightclubs" ]] && hand[1]=$eightclubs
		[[ "${hand[1]}" == "nineclubs" ]] && hand[1]=$nineclubs
		[[ "${hand[1]}" == "tenclubs" ]] && hand[1]=$tenclubs
		[[ "${hand[1]}" == "jackclubs" ]] && hand[1]=$jackclubs
		[[ "${hand[1]}" == "queenclubs" ]] && hand[1]=$queenclubs
		[[ "${hand[1]}" == "kingclubs" ]] && hand[1]=$kingclubs
		[[ "${hand[1]}" == "acediamonds" ]] && hand[1]=$acediamonds
		[[ "${hand[1]}" == "twodiamonds" ]] && hand[1]=$twodiamonds
		[[ "${hand[1]}" == "threediamonds" ]] && hand[1]=$threediamonds
		[[ "${hand[1]}" == "fourdiamonds" ]] && hand[1]=$fourdiamonds
		[[ "${hand[1]}" == "fivediamonds" ]] && hand[1]=$fivediamonds
		[[ "${hand[1]}" == "sixdiamonds" ]] && hand[1]=$sixdiamonds
		[[ "${hand[1]}" == "sevendiamonds" ]] && hand[1]=$sevendiamonds
		[[ "${hand[1]}" == "eightdiamonds" ]] && hand[1]=$eightdiamonds
		[[ "${hand[1]}" == "ninediamonds" ]] && hand[1]=$ninediamonds
		[[ "${hand[1]}" == "tendiamonds" ]] && hand[1]=$tendiamonds
		[[ "${hand[1]}" == "jackdiamonds" ]] && hand[1]=$jackdiamonds
		[[ "${hand[1]}" == "queendiamonds" ]] && hand[1]=$queendiamonds
		[[ "${hand[1]}" == "kingdiamonds" ]] && hand[1]=$kingdiamonds
		[[ "${hand[1]}" == "acehearts" ]] && hand[1]=$acehearts
		[[ "${hand[1]}" == "twohearts" ]] && hand[1]=$twohearts
		[[ "${hand[1]}" == "threehearts" ]] && hand[1]=$threehearts
		[[ "${hand[1]}" == "fourhearts" ]] && hand[1]=$fourhearts
		[[ "${hand[1]}" == "fivehearts" ]] && hand[1]=$fivehearts
		[[ "${hand[1]}" == "sixhearts" ]] && hand[1]=$sixhearts
		[[ "${hand[1]}" == "sevenhearts" ]] && hand[1]=$sevenhearts
		[[ "${hand[1]}" == "eighthearts" ]] && hand[1]=$eighthearts
		[[ "${hand[1]}" == "ninehearts" ]] && hand[1]=$ninehearts
		[[ "${hand[1]}" == "tenhearts" ]] && hand[1]=$tenhearts
		[[ "${hand[1]}" == "jackhearts" ]] && hand[1]=$jackhearts
		[[ "${hand[1]}" == "queenhearts" ]] && hand[1]=$queenhearts
		[[ "${hand[1]}" == "kinghearts" ]] && hand[1]=$kinghearts

		[[ "${hand[2]}" == "acespades" ]] && hand[2]=$acespades
		[[ "${hand[2]}" == "twospades" ]] && hand[2]=$twospades
		[[ "${hand[2]}" == "threespades" ]] && hand[2]=$threespades
		[[ "${hand[2]}" == "fourspades" ]] && hand[2]=$fourspades
		[[ "${hand[2]}" == "fivespades" ]] && hand[2]=$fivespades
		[[ "${hand[2]}" == "sixspades" ]] && hand[2]=$sixspades
		[[ "${hand[2]}" == "sevenspades" ]] && hand[2]=$sevenspades
		[[ "${hand[2]}" == "eightspades" ]] && hand[2]=$eightspades
		[[ "${hand[2]}" == "ninespades" ]] && hand[2]=$ninespades
		[[ "${hand[2]}" == "tenspades" ]] && hand[2]=$tenspades
		[[ "${hand[2]}" == "jackspades" ]] && hand[2]=$jackspades
		[[ "${hand[2]}" == "queenspades" ]] && hand[2]=$queenspades
		[[ "${hand[2]}" == "kingspades" ]] && hand[2]=$kingspades
		[[ "${hand[2]}" == "aceclubs" ]] && hand[2]=$aceclubs
		[[ "${hand[2]}" == "twoclubs" ]] && hand[2]=$twoclubs
		[[ "${hand[2]}" == "threeclubs" ]] && hand[2]=$threeclubs
		[[ "${hand[2]}" == "fourclubs" ]] && hand[2]=$fourclubs
		[[ "${hand[2]}" == "fiveclubs" ]] && hand[2]=$fiveclubs
		[[ "${hand[2]}" == "sixclubs" ]] && hand[2]=$sixclubs
		[[ "${hand[2]}" == "sevenclubs" ]] && hand[2]=$sevenclubs
		[[ "${hand[2]}" == "eightclubs" ]] && hand[2]=$eightclubs
		[[ "${hand[2]}" == "nineclubs" ]] && hand[2]=$nineclubs
		[[ "${hand[2]}" == "tenclubs" ]] && hand[2]=$tenclubs
		[[ "${hand[2]}" == "jackclubs" ]] && hand[2]=$jackclubs
		[[ "${hand[2]}" == "queenclubs" ]] && hand[2]=$queenclubs
		[[ "${hand[2]}" == "kingclubs" ]] && hand[2]=$kingclubs
		[[ "${hand[2]}" == "acediamonds" ]] && hand[2]=$acediamonds
		[[ "${hand[2]}" == "twodiamonds" ]] && hand[2]=$twodiamonds
		[[ "${hand[2]}" == "threediamonds" ]] && hand[2]=$threediamonds
		[[ "${hand[2]}" == "fourdiamonds" ]] && hand[2]=$fourdiamonds
		[[ "${hand[2]}" == "fivediamonds" ]] && hand[2]=$fivediamonds
		[[ "${hand[2]}" == "sixdiamonds" ]] && hand[2]=$sixdiamonds
		[[ "${hand[2]}" == "sevendiamonds" ]] && hand[2]=$sevendiamonds
		[[ "${hand[2]}" == "eightdiamonds" ]] && hand[2]=$eightdiamonds
		[[ "${hand[2]}" == "ninediamonds" ]] && hand[2]=$ninediamonds
		[[ "${hand[2]}" == "tendiamonds" ]] && hand[2]=$tendiamonds
		[[ "${hand[2]}" == "jackdiamonds" ]] && hand[2]=$jackdiamonds
		[[ "${hand[2]}" == "queendiamonds" ]] && hand[2]=$queendiamonds
		[[ "${hand[2]}" == "kingdiamonds" ]] && hand[2]=$kingdiamonds
		[[ "${hand[2]}" == "acehearts" ]] && hand[2]=$acehearts
		[[ "${hand[2]}" == "twohearts" ]] && hand[2]=$twohearts
		[[ "${hand[2]}" == "threehearts" ]] && hand[2]=$threehearts
		[[ "${hand[2]}" == "fourhearts" ]] && hand[2]=$fourhearts
		[[ "${hand[2]}" == "fivehearts" ]] && hand[2]=$fivehearts
		[[ "${hand[2]}" == "sixhearts" ]] && hand[2]=$sixhearts
		[[ "${hand[2]}" == "sevenhearts" ]] && hand[2]=$sevenhearts
		[[ "${hand[2]}" == "eighthearts" ]] && hand[2]=$eighthearts
		[[ "${hand[2]}" == "ninehearts" ]] && hand[2]=$ninehearts
		[[ "${hand[2]}" == "tenhearts" ]] && hand[2]=$tenhearts
		[[ "${hand[2]}" == "jackhearts" ]] && hand[2]=$jackhearts
		[[ "${hand[2]}" == "queenhearts" ]] && hand[2]=$queenhearts
		[[ "${hand[2]}" == "kinghearts" ]] && hand[2]=$kinghearts

		[[ "${hand[3]}" == "acespades" ]] && hand[3]=$acespades
		[[ "${hand[3]}" == "twospades" ]] && hand[3]=$twospades
		[[ "${hand[3]}" == "threespades" ]] && hand[3]=$threespades
		[[ "${hand[3]}" == "fourspades" ]] && hand[3]=$fourspades
		[[ "${hand[3]}" == "fivespades" ]] && hand[3]=$fivespades
		[[ "${hand[3]}" == "sixspades" ]] && hand[3]=$sixspades
		[[ "${hand[3]}" == "sevenspades" ]] && hand[3]=$sevenspades
		[[ "${hand[3]}" == "eightspades" ]] && hand[3]=$eightspades
		[[ "${hand[3]}" == "ninespades" ]] && hand[3]=$ninespades
		[[ "${hand[3]}" == "tenspades" ]] && hand[3]=$tenspades
		[[ "${hand[3]}" == "jackspades" ]] && hand[3]=$jackspades
		[[ "${hand[3]}" == "queenspades" ]] && hand[3]=$queenspades
		[[ "${hand[3]}" == "kingspades" ]] && hand[3]=$kingspades
		[[ "${hand[3]}" == "aceclubs" ]] && hand[3]=$aceclubs
		[[ "${hand[3]}" == "twoclubs" ]] && hand[3]=$twoclubs
		[[ "${hand[3]}" == "threeclubs" ]] && hand[3]=$threeclubs
		[[ "${hand[3]}" == "fourclubs" ]] && hand[3]=$fourclubs
		[[ "${hand[3]}" == "fiveclubs" ]] && hand[3]=$fiveclubs
		[[ "${hand[3]}" == "sixclubs" ]] && hand[3]=$sixclubs
		[[ "${hand[3]}" == "sevenclubs" ]] && hand[3]=$sevenclubs
		[[ "${hand[3]}" == "eightclubs" ]] && hand[3]=$eightclubs
		[[ "${hand[3]}" == "nineclubs" ]] && hand[3]=$nineclubs
		[[ "${hand[3]}" == "tenclubs" ]] && hand[3]=$tenclubs
		[[ "${hand[3]}" == "jackclubs" ]] && hand[3]=$jackclubs
		[[ "${hand[3]}" == "queenclubs" ]] && hand[3]=$queenclubs
		[[ "${hand[3]}" == "kingclubs" ]] && hand[3]=$kingclubs
		[[ "${hand[3]}" == "acediamonds" ]] && hand[3]=$acediamonds
		[[ "${hand[3]}" == "twodiamonds" ]] && hand[3]=$twodiamonds
		[[ "${hand[3]}" == "threediamonds" ]] && hand[3]=$threediamonds
		[[ "${hand[3]}" == "fourdiamonds" ]] && hand[3]=$fourdiamonds
		[[ "${hand[3]}" == "fivediamonds" ]] && hand[3]=$fivediamonds
		[[ "${hand[3]}" == "sixdiamonds" ]] && hand[3]=$sixdiamonds
		[[ "${hand[3]}" == "sevendiamonds" ]] && hand[3]=$sevendiamonds
		[[ "${hand[3]}" == "eightdiamonds" ]] && hand[3]=$eightdiamonds
		[[ "${hand[3]}" == "ninediamonds" ]] && hand[3]=$ninediamonds
		[[ "${hand[3]}" == "tendiamonds" ]] && hand[3]=$tendiamonds
		[[ "${hand[3]}" == "jackdiamonds" ]] && hand[3]=$jackdiamonds
		[[ "${hand[3]}" == "queendiamonds" ]] && hand[3]=$queendiamonds
		[[ "${hand[3]}" == "kingdiamonds" ]] && hand[3]=$kingdiamonds
		[[ "${hand[3]}" == "acehearts" ]] && hand[3]=$acehearts
		[[ "${hand[3]}" == "twohearts" ]] && hand[3]=$twohearts
		[[ "${hand[3]}" == "threehearts" ]] && hand[3]=$threehearts
		[[ "${hand[3]}" == "fourhearts" ]] && hand[3]=$fourhearts
		[[ "${hand[3]}" == "fivehearts" ]] && hand[3]=$fivehearts
		[[ "${hand[3]}" == "sixhearts" ]] && hand[3]=$sixhearts
		[[ "${hand[3]}" == "sevenhearts" ]] && hand[3]=$sevenhearts
		[[ "${hand[3]}" == "eighthearts" ]] && hand[3]=$eighthearts
		[[ "${hand[3]}" == "ninehearts" ]] && hand[3]=$ninehearts
		[[ "${hand[3]}" == "tenhearts" ]] && hand[3]=$tenhearts
		[[ "${hand[3]}" == "jackhearts" ]] && hand[3]=$jackhearts
		[[ "${hand[3]}" == "queenhearts" ]] && hand[3]=$queenhearts
		[[ "${hand[3]}" == "kinghearts" ]] && hand[3]=$kinghearts

		[[ "${hand[4]}" == "acespades" ]] && hand[4]=$acespades
		[[ "${hand[4]}" == "twospades" ]] && hand[4]=$twospades
		[[ "${hand[4]}" == "threespades" ]] && hand[4]=$threespades
		[[ "${hand[4]}" == "fourspades" ]] && hand[4]=$fourspades
		[[ "${hand[4]}" == "fivespades" ]] && hand[4]=$fivespades
		[[ "${hand[4]}" == "sixspades" ]] && hand[4]=$sixspades
		[[ "${hand[4]}" == "sevenspades" ]] && hand[4]=$sevenspades
		[[ "${hand[4]}" == "eightspades" ]] && hand[4]=$eightspades
		[[ "${hand[4]}" == "ninespades" ]] && hand[4]=$ninespades
		[[ "${hand[4]}" == "tenspades" ]] && hand[4]=$tenspades
		[[ "${hand[4]}" == "jackspades" ]] && hand[4]=$jackspades
		[[ "${hand[4]}" == "queenspades" ]] && hand[4]=$queenspades
		[[ "${hand[4]}" == "kingspades" ]] && hand[4]=$kingspades
		[[ "${hand[4]}" == "aceclubs" ]] && hand[4]=$aceclubs
		[[ "${hand[4]}" == "twoclubs" ]] && hand[4]=$twoclubs
		[[ "${hand[4]}" == "threeclubs" ]] && hand[4]=$threeclubs
		[[ "${hand[4]}" == "fourclubs" ]] && hand[4]=$fourclubs
		[[ "${hand[4]}" == "fiveclubs" ]] && hand[4]=$fiveclubs
		[[ "${hand[4]}" == "sixclubs" ]] && hand[4]=$sixclubs
		[[ "${hand[4]}" == "sevenclubs" ]] && hand[4]=$sevenclubs
		[[ "${hand[4]}" == "eightclubs" ]] && hand[4]=$eightclubs
		[[ "${hand[4]}" == "nineclubs" ]] && hand[4]=$nineclubs
		[[ "${hand[4]}" == "tenclubs" ]] && hand[4]=$tenclubs
		[[ "${hand[4]}" == "jackclubs" ]] && hand[4]=$jackclubs
		[[ "${hand[4]}" == "queenclubs" ]] && hand[4]=$queenclubs
		[[ "${hand[4]}" == "kingclubs" ]] && hand[4]=$kingclubs
		[[ "${hand[4]}" == "acediamonds" ]] && hand[4]=$acediamonds
		[[ "${hand[4]}" == "twodiamonds" ]] && hand[4]=$twodiamonds
		[[ "${hand[4]}" == "threediamonds" ]] && hand[4]=$threediamonds
		[[ "${hand[4]}" == "fourdiamonds" ]] && hand[4]=$fourdiamonds
		[[ "${hand[4]}" == "fivediamonds" ]] && hand[4]=$fivediamonds
		[[ "${hand[4]}" == "sixdiamonds" ]] && hand[4]=$sixdiamonds
		[[ "${hand[4]}" == "sevendiamonds" ]] && hand[4]=$sevendiamonds
		[[ "${hand[4]}" == "eightdiamonds" ]] && hand[4]=$eightdiamonds
		[[ "${hand[4]}" == "ninediamonds" ]] && hand[4]=$ninediamonds
		[[ "${hand[4]}" == "tendiamonds" ]] && hand[4]=$tendiamonds
		[[ "${hand[4]}" == "jackdiamonds" ]] && hand[4]=$jackdiamonds
		[[ "${hand[4]}" == "queendiamonds" ]] && hand[4]=$queendiamonds
		[[ "${hand[4]}" == "kingdiamonds" ]] && hand[4]=$kingdiamonds
		[[ "${hand[4]}" == "acehearts" ]] && hand[4]=$acehearts
		[[ "${hand[4]}" == "twohearts" ]] && hand[4]=$twohearts
		[[ "${hand[4]}" == "threehearts" ]] && hand[4]=$threehearts
		[[ "${hand[4]}" == "fourhearts" ]] && hand[4]=$fourhearts
		[[ "${hand[4]}" == "fivehearts" ]] && hand[4]=$fivehearts
		[[ "${hand[4]}" == "sixhearts" ]] && hand[4]=$sixhearts
		[[ "${hand[4]}" == "sevenhearts" ]] && hand[4]=$sevenhearts
		[[ "${hand[4]}" == "eighthearts" ]] && hand[4]=$eighthearts
		[[ "${hand[4]}" == "ninehearts" ]] && hand[4]=$ninehearts
		[[ "${hand[4]}" == "tenhearts" ]] && hand[4]=$tenhearts
		[[ "${hand[4]}" == "jackhearts" ]] && hand[4]=$jackhearts
		[[ "${hand[4]}" == "queenhearts" ]] && hand[4]=$queenhearts
		[[ "${hand[4]}" == "kinghearts" ]] && hand[4]=$kinghearts
	fi

	[[ "$handzero" == "acespades" ]] && handzero=$acespades
	[[ "$handzero" == "twospades" ]] && handzero=$twospades
	[[ "$handzero" == "threespades" ]] && handzero=$threespades
	[[ "$handzero" == "fourspades" ]] && handzero=$fourspades
	[[ "$handzero" == "fivespades" ]] && handzero=$fivespades
	[[ "$handzero" == "sixspades" ]] && handzero=$sixspades
	[[ "$handzero" == "sevenspades" ]] && handzero=$sevenspades
	[[ "$handzero" == "eightspades" ]] && handzero=$eightspades
	[[ "$handzero" == "ninespades" ]] && handzero=$ninespades
	[[ "$handzero" == "tenspades" ]] && handzero=$tenspades
	[[ "$handzero" == "jackspades" ]] && handzero=$jackspades
	[[ "$handzero" == "queenspades" ]] && handzero=$queenspades
	[[ "$handzero" == "kingspades" ]] && handzero=$kingspades
	[[ "$handzero" == "aceclubs" ]] && handzero=$aceclubs
	[[ "$handzero" == "twoclubs" ]] && handzero=$twoclubs
	[[ "$handzero" == "threeclubs" ]] && handzero=$threeclubs
	[[ "$handzero" == "fourclubs" ]] && handzero=$fourclubs
	[[ "$handzero" == "fiveclubs" ]] && handzero=$fiveclubs
	[[ "$handzero" == "sixclubs" ]] && handzero=$sixclubs
	[[ "$handzero" == "sevenclubs" ]] && handzero=$sevenclubs
	[[ "$handzero" == "eightclubs" ]] && handzero=$eightclubs
	[[ "$handzero" == "nineclubs" ]] && handzero=$nineclubs
	[[ "$handzero" == "tenclubs" ]] && handzero=$tenclubs
	[[ "$handzero" == "jackclubs" ]] && handzero=$jackclubs
	[[ "$handzero" == "queenclubs" ]] && handzero=$queenclubs
	[[ "$handzero" == "kingclubs" ]] && handzero=$kingclubs
	[[ "$handzero" == "acediamonds" ]] && handzero=$acediamonds
	[[ "$handzero" == "twodiamonds" ]] && handzero=$twodiamonds
	[[ "$handzero" == "threediamonds" ]] && handzero=$threediamonds
	[[ "$handzero" == "fourdiamonds" ]] && handzero=$fourdiamonds
	[[ "$handzero" == "fivediamonds" ]] && handzero=$fivediamonds
	[[ "$handzero" == "sixdiamonds" ]] && handzero=$sixdiamonds
	[[ "$handzero" == "sevendiamonds" ]] && handzero=$sevendiamonds
	[[ "$handzero" == "eightdiamonds" ]] && handzero=$eightdiamonds
	[[ "$handzero" == "ninediamonds" ]] && handzero=$ninediamonds
	[[ "$handzero" == "tendiamonds" ]] && handzero=$tendiamonds
	[[ "$handzero" == "jackdiamonds" ]] && handzero=$jackdiamonds
	[[ "$handzero" == "queendiamonds" ]] && handzero=$queendiamonds
	[[ "$handzero" == "kingdiamonds" ]] && handzero=$kingdiamonds
	[[ "$handzero" == "acehearts" ]] && handzero=$acehearts
	[[ "$handzero" == "twohearts" ]] && handzero=$twohearts
	[[ "$handzero" == "threehearts" ]] && handzero=$threehearts
	[[ "$handzero" == "fourhearts" ]] && handzero=$fourhearts
	[[ "$handzero" == "fivehearts" ]] && handzero=$fivehearts
	[[ "$handzero" == "sixhearts" ]] && handzero=$sixhearts
	[[ "$handzero" == "sevenhearts" ]] && handzero=$sevenhearts
	[[ "$handzero" == "eighthearts" ]] && handzero=$eighthearts
	[[ "$handzero" == "ninehearts" ]] && handzero=$ninehearts
	[[ "$handzero" == "tenhearts" ]] && handzero=$tenhearts
	[[ "$handzero" == "jackhearts" ]] && handzero=$jackhearts
	[[ "$handzero" == "queenhearts" ]] && handzero=$queenhearts
	[[ "$handzero" == "kinghearts" ]] && handzero=$kinghearts
	[[ "$handone" == "acespades" ]] && handone=$acespades
	[[ "$handone" == "twospades" ]] && handone=$twospades
	[[ "$handone" == "threespades" ]] && handone=$threespades
	[[ "$handone" == "fourspades" ]] && handone=$fourspades
	[[ "$handone" == "fivespades" ]] && handone=$fivespades
	[[ "$handone" == "sixspades" ]] && handone=$sixspades
	[[ "$handone" == "sevenspades" ]] && handone=$sevenspades
	[[ "$handone" == "eightspades" ]] && handone=$eightspades
	[[ "$handone" == "ninespades" ]] && handone=$ninespades
	[[ "$handone" == "tenspades" ]] && handone=$tenspades
	[[ "$handone" == "jackspades" ]] && handone=$jackspades
	[[ "$handone" == "queenspades" ]] && handone=$queenspades
	[[ "$handone" == "kingspades" ]] && handone=$kingspades
	[[ "$handone" == "aceclubs" ]] && handone=$aceclubs
	[[ "$handone" == "twoclubs" ]] && handone=$twoclubs
	[[ "$handone" == "threeclubs" ]] && handone=$threeclubs
	[[ "$handone" == "fourclubs" ]] && handone=$fourclubs
	[[ "$handone" == "fiveclubs" ]] && handone=$fiveclubs
	[[ "$handone" == "sixclubs" ]] && handone=$sixclubs
	[[ "$handone" == "sevenclubs" ]] && handone=$sevenclubs
	[[ "$handone" == "eightclubs" ]] && handone=$eightclubs
	[[ "$handone" == "nineclubs" ]] && handone=$nineclubs
	[[ "$handone" == "tenclubs" ]] && handone=$tenclubs
	[[ "$handone" == "jackclubs" ]] && handone=$jackclubs
	[[ "$handone" == "queenclubs" ]] && handone=$queenclubs
	[[ "$handone" == "kingclubs" ]] && handone=$kingclubs
	[[ "$handone" == "acediamonds" ]] && handone=$acediamonds
	[[ "$handone" == "twodiamonds" ]] && handone=$twodiamonds
	[[ "$handone" == "threediamonds" ]] && handone=$threediamonds
	[[ "$handone" == "fourdiamonds" ]] && handone=$fourdiamonds
	[[ "$handone" == "fivediamonds" ]] && handone=$fivediamonds
	[[ "$handone" == "sixdiamonds" ]] && handone=$sixdiamonds
	[[ "$handone" == "sevendiamonds" ]] && handone=$sevendiamonds
	[[ "$handone" == "eightdiamonds" ]] && handone=$eightdiamonds
	[[ "$handone" == "ninediamonds" ]] && handone=$ninediamonds
	[[ "$handone" == "tendiamonds" ]] && handone=$tendiamonds
	[[ "$handone" == "jackdiamonds" ]] && handone=$jackdiamonds
	[[ "$handone" == "queendiamonds" ]] && handone=$queendiamonds
	[[ "$handone" == "kingdiamonds" ]] && handone=$kingdiamonds
	[[ "$handone" == "acehearts" ]] && handone=$acehearts
	[[ "$handone" == "twohearts" ]] && handone=$twohearts
	[[ "$handone" == "threehearts" ]] && handone=$threehearts
	[[ "$handone" == "fourhearts" ]] && handone=$fourhearts
	[[ "$handone" == "fivehearts" ]] && handone=$fivehearts
	[[ "$handone" == "sixhearts" ]] && handone=$sixhearts
	[[ "$handone" == "sevenhearts" ]] && handone=$sevenhearts
	[[ "$handone" == "eighthearts" ]] && handone=$eighthearts
	[[ "$handone" == "ninehearts" ]] && handone=$ninehearts
	[[ "$handone" == "tenhearts" ]] && handone=$tenhearts
	[[ "$handone" == "jackhearts" ]] && handone=$jackhearts
	[[ "$handone" == "queenhearts" ]] && handone=$queenhearts
	[[ "$handone" == "kinghearts" ]] && handone=$kinghearts
	[[ "$handone" == "acespades" ]] && handone=$acespades
	[[ "$handone" == "twospades" ]] && handone=$twospades
	[[ "$handone" == "threespades" ]] && handone=$threespades
	[[ "$handone" == "fourspades" ]] && handone=$fourspades
	[[ "$handone" == "fivespades" ]] && handone=$fivespades
	[[ "$handone" == "sixspades" ]] && handone=$sixspades
	[[ "$handone" == "sevenspades" ]] && handone=$sevenspades
	[[ "$handone" == "eightspades" ]] && handone=$eightspades
	[[ "$handone" == "ninespades" ]] && handone=$ninespades
	[[ "$handone" == "tenspades" ]] && handone=$tenspades
	[[ "$handone" == "jackspades" ]] && handone=$jackspades
	[[ "$handone" == "queenspades" ]] && handone=$queenspades
	[[ "$handone" == "kingspades" ]] && handone=$kingspades
	[[ "$handone" == "aceclubs" ]] && handone=$aceclubs
	[[ "$handone" == "twoclubs" ]] && handone=$twoclubs
	[[ "$handone" == "threeclubs" ]] && handone=$threeclubs
	[[ "$handone" == "fourclubs" ]] && handone=$fourclubs
	[[ "$handone" == "fiveclubs" ]] && handone=$fiveclubs
	[[ "$handone" == "sixclubs" ]] && handone=$sixclubs
	[[ "$handone" == "sevenclubs" ]] && handone=$sevenclubs
	[[ "$handone" == "eightclubs" ]] && handone=$eightclubs
	[[ "$handone" == "nineclubs" ]] && handone=$nineclubs
	[[ "$handone" == "tenclubs" ]] && handone=$tenclubs
	[[ "$handone" == "jackclubs" ]] && handone=$jackclubs
	[[ "$handone" == "queenclubs" ]] && handone=$queenclubs
	[[ "$handone" == "kingclubs" ]] && handone=$kingclubs
	[[ "$handone" == "acediamonds" ]] && handone=$acediamonds
	[[ "$handone" == "twodiamonds" ]] && handone=$twodiamonds
	[[ "$handone" == "threediamonds" ]] && handone=$threediamonds
	[[ "$handone" == "fourdiamonds" ]] && handone=$fourdiamonds
	[[ "$handone" == "fivediamonds" ]] && handone=$fivediamonds
	[[ "$handone" == "sixdiamonds" ]] && handone=$sixdiamonds
	[[ "$handone" == "sevendiamonds" ]] && handone=$sevendiamonds
	[[ "$handone" == "eightdiamonds" ]] && handone=$eightdiamonds
	[[ "$handone" == "ninediamonds" ]] && handone=$ninediamonds
	[[ "$handone" == "tendiamonds" ]] && handone=$tendiamonds
	[[ "$handone" == "jackdiamonds" ]] && handone=$jackdiamonds
	[[ "$handone" == "queendiamonds" ]] && handone=$queendiamonds
	[[ "$handone" == "kingdiamonds" ]] && handone=$kingdiamonds
	[[ "$handone" == "acehearts" ]] && handone=$acehearts
	[[ "$handone" == "twohearts" ]] && handone=$twohearts
	[[ "$handone" == "threehearts" ]] && handone=$threehearts
	[[ "$handone" == "fourhearts" ]] && handone=$fourhearts
	[[ "$handone" == "fivehearts" ]] && handone=$fivehearts
	[[ "$handone" == "sixhearts" ]] && handone=$sixhearts
	[[ "$handone" == "sevenhearts" ]] && handone=$sevenhearts
	[[ "$handone" == "eighthearts" ]] && handone=$eighthearts
	[[ "$handone" == "ninehearts" ]] && handone=$ninehearts
	[[ "$handone" == "tenhearts" ]] && handone=$tenhearts
	[[ "$handone" == "jackhearts" ]] && handone=$jackhearts
	[[ "$handone" == "queenhearts" ]] && handone=$queenhearts
	[[ "$handone" == "kinghearts" ]] && handone=$kinghearts

	[[ "$handtwo" == "acespades" ]] && handtwo=$acespades
	[[ "$handtwo" == "twospades" ]] && handtwo=$twospades
	[[ "$handtwo" == "threespades" ]] && handtwo=$threespades
	[[ "$handtwo" == "fourspades" ]] && handtwo=$fourspades
	[[ "$handtwo" == "fivespades" ]] && handtwo=$fivespades
	[[ "$handtwo" == "sixspades" ]] && handtwo=$sixspades
	[[ "$handtwo" == "sevenspades" ]] && handtwo=$sevenspades
	[[ "$handtwo" == "eightspades" ]] && handtwo=$eightspades
	[[ "$handtwo" == "ninespades" ]] && handtwo=$ninespades
	[[ "$handtwo" == "tenspades" ]] && handtwo=$tenspades
	[[ "$handtwo" == "jackspades" ]] && handtwo=$jackspades
	[[ "$handtwo" == "queenspades" ]] && handtwo=$queenspades
	[[ "$handtwo" == "kingspades" ]] && handtwo=$kingspades
	[[ "$handtwo" == "aceclubs" ]] && handtwo=$aceclubs
	[[ "$handtwo" == "twoclubs" ]] && handtwo=$twoclubs
	[[ "$handtwo" == "threeclubs" ]] && handtwo=$threeclubs
	[[ "$handtwo" == "fourclubs" ]] && handtwo=$fourclubs
	[[ "$handtwo" == "fiveclubs" ]] && handtwo=$fiveclubs
	[[ "$handtwo" == "sixclubs" ]] && handtwo=$sixclubs
	[[ "$handtwo" == "sevenclubs" ]] && handtwo=$sevenclubs
	[[ "$handtwo" == "eightclubs" ]] && handtwo=$eightclubs
	[[ "$handtwo" == "nineclubs" ]] && handtwo=$nineclubs
	[[ "$handtwo" == "tenclubs" ]] && handtwo=$tenclubs
	[[ "$handtwo" == "jackclubs" ]] && handtwo=$jackclubs
	[[ "$handtwo" == "queenclubs" ]] && handtwo=$queenclubs
	[[ "$handtwo" == "kingclubs" ]] && handtwo=$kingclubs
	[[ "$handtwo" == "acediamonds" ]] && handtwo=$acediamonds
	[[ "$handtwo" == "twodiamonds" ]] && handtwo=$twodiamonds
	[[ "$handtwo" == "threediamonds" ]] && handtwo=$threediamonds
	[[ "$handtwo" == "fourdiamonds" ]] && handtwo=$fourdiamonds
	[[ "$handtwo" == "fivediamonds" ]] && handtwo=$fivediamonds
	[[ "$handtwo" == "sixdiamonds" ]] && handtwo=$sixdiamonds
	[[ "$handtwo" == "sevendiamonds" ]] && handtwo=$sevendiamonds
	[[ "$handtwo" == "eightdiamonds" ]] && handtwo=$eightdiamonds
	[[ "$handtwo" == "ninediamonds" ]] && handtwo=$ninediamonds
	[[ "$handtwo" == "tendiamonds" ]] && handtwo=$tendiamonds
	[[ "$handtwo" == "jackdiamonds" ]] && handtwo=$jackdiamonds
	[[ "$handtwo" == "queendiamonds" ]] && handtwo=$queendiamonds
	[[ "$handtwo" == "kingdiamonds" ]] && handtwo=$kingdiamonds
	[[ "$handtwo" == "acehearts" ]] && handtwo=$acehearts
	[[ "$handtwo" == "twohearts" ]] && handtwo=$twohearts
	[[ "$handtwo" == "threehearts" ]] && handtwo=$threehearts
	[[ "$handtwo" == "fourhearts" ]] && handtwo=$fourhearts
	[[ "$handtwo" == "fivehearts" ]] && handtwo=$fivehearts
	[[ "$handtwo" == "sixhearts" ]] && handtwo=$sixhearts
	[[ "$handtwo" == "sevenhearts" ]] && handtwo=$sevenhearts
	[[ "$handtwo" == "eighthearts" ]] && handtwo=$eighthearts
	[[ "$handtwo" == "ninehearts" ]] && handtwo=$ninehearts
	[[ "$handtwo" == "tenhearts" ]] && handtwo=$tenhearts
	[[ "$handtwo" == "jackhearts" ]] && handtwo=$jackhearts
	[[ "$handtwo" == "queenhearts" ]] && handtwo=$queenhearts
	[[ "$handtwo" == "kinghearts" ]] && handtwo=$kinghearts

	[[ "$handthree" == "acespades" ]] && handthree=$acespades
	[[ "$handthree" == "twospades" ]] && handthree=$twospades
	[[ "$handthree" == "threespades" ]] && handthree=$threespades
	[[ "$handthree" == "fourspades" ]] && handthree=$fourspades
	[[ "$handthree" == "fivespades" ]] && handthree=$fivespades
	[[ "$handthree" == "sixspades" ]] && handthree=$sixspades
	[[ "$handthree" == "sevenspades" ]] && handthree=$sevenspades
	[[ "$handthree" == "eightspades" ]] && handthree=$eightspades
	[[ "$handthree" == "ninespades" ]] && handthree=$ninespades
	[[ "$handthree" == "tenspades" ]] && handthree=$tenspades
	[[ "$handthree" == "jackspades" ]] && handthree=$jackspades
	[[ "$handthree" == "queenspades" ]] && handthree=$queenspades
	[[ "$handthree" == "kingspades" ]] && handthree=$kingspades
	[[ "$handthree" == "aceclubs" ]] && handthree=$aceclubs
	[[ "$handthree" == "twoclubs" ]] && handthree=$twoclubs
	[[ "$handthree" == "threeclubs" ]] && handthree=$threeclubs
	[[ "$handthree" == "fourclubs" ]] && handthree=$fourclubs
	[[ "$handthree" == "fiveclubs" ]] && handthree=$fiveclubs
	[[ "$handthree" == "sixclubs" ]] && handthree=$sixclubs
	[[ "$handthree" == "sevenclubs" ]] && handthree=$sevenclubs
	[[ "$handthree" == "eightclubs" ]] && handthree=$eightclubs
	[[ "$handthree" == "nineclubs" ]] && handthree=$nineclubs
	[[ "$handthree" == "tenclubs" ]] && handthree=$tenclubs
	[[ "$handthree" == "jackclubs" ]] && handthree=$jackclubs
	[[ "$handthree" == "queenclubs" ]] && handthree=$queenclubs
	[[ "$handthree" == "kingclubs" ]] && handthree=$kingclubs
	[[ "$handthree" == "acediamonds" ]] && handthree=$acediamonds
	[[ "$handthree" == "twodiamonds" ]] && handthree=$twodiamonds
	[[ "$handthree" == "threediamonds" ]] && handthree=$threediamonds
	[[ "$handthree" == "fourdiamonds" ]] && handthree=$fourdiamonds
	[[ "$handthree" == "fivediamonds" ]] && handthree=$fivediamonds
	[[ "$handthree" == "sixdiamonds" ]] && handthree=$sixdiamonds
	[[ "$handthree" == "sevendiamonds" ]] && handthree=$sevendiamonds
	[[ "$handthree" == "eightdiamonds" ]] && handthree=$eightdiamonds
	[[ "$handthree" == "ninediamonds" ]] && handthree=$ninediamonds
	[[ "$handthree" == "tendiamonds" ]] && handthree=$tendiamonds
	[[ "$handthree" == "jackdiamonds" ]] && handthree=$jackdiamonds
	[[ "$handthree" == "queendiamonds" ]] && handthree=$queendiamonds
	[[ "$handthree" == "kingdiamonds" ]] && handthree=$kingdiamonds
	[[ "$handthree" == "acehearts" ]] && handthree=$acehearts
	[[ "$handthree" == "twohearts" ]] && handthree=$twohearts
	[[ "$handthree" == "threehearts" ]] && handthree=$threehearts
	[[ "$handthree" == "fourhearts" ]] && handthree=$fourhearts
	[[ "$handthree" == "fivehearts" ]] && handthree=$fivehearts
	[[ "$handthree" == "sixhearts" ]] && handthree=$sixhearts
	[[ "$handthree" == "sevenhearts" ]] && handthree=$sevenhearts
	[[ "$handthree" == "eighthearts" ]] && handthree=$eighthearts
	[[ "$handthree" == "ninehearts" ]] && handthree=$ninehearts
	[[ "$handthree" == "tenhearts" ]] && handthree=$tenhearts
	[[ "$handthree" == "jackhearts" ]] && handthree=$jackhearts
	[[ "$handthree" == "queenhearts" ]] && handthree=$queenhearts
	[[ "$handthree" == "kinghearts" ]] && handthree=$kinghearts
	[[ "$handfour" == "acespades" ]] && handfour=$acespades
	[[ "$handfour" == "twospades" ]] && handfour=$twospades
	[[ "$handfour" == "threespades" ]] && handfour=$threespades
	[[ "$handfour" == "fourspades" ]] && handfour=$fourspades
	[[ "$handfour" == "fivespades" ]] && handfour=$fivespades
	[[ "$handfour" == "sixspades" ]] && handfour=$sixspades
	[[ "$handfour" == "sevenspades" ]] && handfour=$sevenspades
	[[ "$handfour" == "eightspades" ]] && handfour=$eightspades
	[[ "$handfour" == "ninespades" ]] && handfour=$ninespades
	[[ "$handfour" == "tenspades" ]] && handfour=$tenspades
	[[ "$handfour" == "jackspades" ]] && handfour=$jackspades
	[[ "$handfour" == "queenspades" ]] && handfour=$queenspades
	[[ "$handfour" == "kingspades" ]] && handfour=$kingspades
	[[ "$handfour" == "aceclubs" ]] && handfour=$aceclubs
	[[ "$handfour" == "twoclubs" ]] && handfour=$twoclubs
	[[ "$handfour" == "threeclubs" ]] && handfour=$threeclubs
	[[ "$handfour" == "fourclubs" ]] && handfour=$fourclubs
	[[ "$handfour" == "fiveclubs" ]] && handfour=$fiveclubs
	[[ "$handfour" == "sixclubs" ]] && handfour=$sixclubs
	[[ "$handfour" == "sevenclubs" ]] && handfour=$sevenclubs
	[[ "$handfour" == "eightclubs" ]] && handfour=$eightclubs
	[[ "$handfour" == "nineclubs" ]] && handfour=$nineclubs
	[[ "$handfour" == "tenclubs" ]] && handfour=$tenclubs
	[[ "$handfour" == "jackclubs" ]] && handfour=$jackclubs
	[[ "$handfour" == "queenclubs" ]] && handfour=$queenclubs
	[[ "$handfour" == "kingclubs" ]] && handfour=$kingclubs
	[[ "$handfour" == "acediamonds" ]] && handfour=$acediamonds
	[[ "$handfour" == "twodiamonds" ]] && handfour=$twodiamonds
	[[ "$handfour" == "threediamonds" ]] && handfour=$threediamonds
	[[ "$handfour" == "fourdiamonds" ]] && handfour=$fourdiamonds
	[[ "$handfour" == "fivediamonds" ]] && handfour=$fivediamonds
	[[ "$handfour" == "sixdiamonds" ]] && handfour=$sixdiamonds
	[[ "$handfour" == "sevendiamonds" ]] && handfour=$sevendiamonds
	[[ "$handfour" == "eightdiamonds" ]] && handfour=$eightdiamonds
	[[ "$handfour" == "ninediamonds" ]] && handfour=$ninediamonds
	[[ "$handfour" == "tendiamonds" ]] && handfour=$tendiamonds
	[[ "$handfour" == "jackdiamonds" ]] && handfour=$jackdiamonds
	[[ "$handfour" == "queendiamonds" ]] && handfour=$queendiamonds
	[[ "$handfour" == "kingdiamonds" ]] && handfour=$kingdiamonds
	[[ "$handfour" == "acehearts" ]] && handfour=$acehearts
	[[ "$handfour" == "twohearts" ]] && handfour=$twohearts
	[[ "$handfour" == "threehearts" ]] && handfour=$threehearts
	[[ "$handfour" == "fourhearts" ]] && handfour=$fourhearts
	[[ "$handfour" == "fivehearts" ]] && handfour=$fivehearts
	[[ "$handfour" == "sixhearts" ]] && handfour=$sixhearts
	[[ "$handfour" == "sevenhearts" ]] && handfour=$sevenhearts
	[[ "$handfour" == "eighthearts" ]] && handfour=$eighthearts
	[[ "$handfour" == "ninehearts" ]] && handfour=$ninehearts
	[[ "$handfour" == "tenhearts" ]] && handfour=$tenhearts
	[[ "$handfour" == "jackhearts" ]] && handfour=$jackhearts
	[[ "$handfour" == "queenhearts" ]] && handfour=$queenhearts
	[[ "$handfour" == "kinghearts" ]] && handfour=$kinghearts

	one="1"
	two="2"
	three="3"
	four="4"
	five="5"

	##paste -d" " <(printf %s "$default$one") <(printf %s "$default${display[0]}") <(printf %s "$handzero") <(printf %s "$default$two") <(printf %s "$default${display[1]}") <(printf %s "$handone") <(printf %s "$default$three") <(printf %s "$default${display[2]}") <(printf %s "$handtwo") <(printf %s "$default$four") <(printf %s "$default${display[3]}") <(printf %s "$handthree") <(printf %s "$default$five") <(printf %s "$default${display[4]}") <(printf %s "$handfour")

	##paste -d" " <(printf %s "$default$one") <(printf %s "$default${display[0]}") <(printf %s "$default$two") <(printf %s "$default${display[1]}") <(printf %s "$default$three") <(printf %s "$default${display[2]}") <(printf %s "$default$four") <(printf %s "$default${display[3]}") <(printf %s "$default$five") <(printf %s "$default${display[4]}")
	##paste -d" " <(printf %s "$handzero") <(printf %s "$handone") <(printf %s "$handtwo") <(printf %s "$handthree") <(printf %s "$handfour")

	paste -d' ' <(printf %s "$default$one") <(printf %s "$default${display[0]}") <(printf %s "$default$two") <(printf %s "$default${display[1]}") <(printf %s "$default$three") <(printf %s "$default${display[2]}") <(printf %s "$default$four") <(printf %s "$default${display[3]}") <(printf %s "$default$five") <(printf %s "$default${display[4]}")
	paste -d' ' <(printf %s "$handzero") <(printf %s "$handone") <(printf %s "$handtwo") <(printf %s "$handthree") <(printf %s "$handfour")


	printf %s "$default"

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
	cardvarhand
	cardrender

	mull

	##	mchand[0]="${library[25]}"
	##	mchand[1]="${library[13]}"
	##	mchand[2]="${library[14]}"
	##	mchand[3]="${library[15]}"
	##	mchand[4]="${library[16]}"

	ruffle
	var
	ifcalc
	iswin
	cardvarhand
	cardrender

	refresh
	vars

	game

}

clear

vars

play

while [[ $repeat -eq 1 ]]; do
	if [[ ! $repeat -eq 1 ]]; then
		return 1
	fi
	play
done
