#!/bin/bash


codex () {

for iter in {0..41}
do
	echo "codex[$iter]="
done > codex.bash

echo "1 of Jokers
2 of Spades
3 of Spades
4 of Spades
5 of Spades
6 of Spades
7 of Spades
8 of Spades
9 of Spades
10 of Spades
11 of Spades
11 of Diamonds
10 of Diamonds
9 of Diamonds
8 of Diamonds
7 of Diamonds
6 of Diamonds
5 of Diamonds
4 of Diamonds
3 of Diamonds
2 of Diamonds
2 of Clubs
3 of Clubs
4 of Clubs
5 of Clubs
6 of Clubs
7 of Clubs
8 of Clubs
9 of Clubs
10 of Clubs
11 of Clubs
11 of Hearts
10 of Hearts
9 of Hearts
8 of Hearts
7 of Hearts
6 of Hearts
5 of Hearts
4 of Hearts
3 of Hearts
2 of Hearts
12 of Jokers" > codex



while IFS= read -r line1 && IFS= read -r line2 <&3
do
	echo "$line1$line2"
done < codex.bash 3< codex > library



}
