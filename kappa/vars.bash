#!/bin/bash

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

echo "${library[@]}" >/dev/null
echo "${display[@]}" >/dev/null
echo "$re" >/dev/null
##echo "$repeat" >/dev/null
##echo "$flush" >/dev/null
