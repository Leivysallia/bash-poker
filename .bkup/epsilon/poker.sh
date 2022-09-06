#!/bin/bash

clear

source functions.bash
source vars.bash

debug_game

##	game

while [[ $repeat -eq 1 ]]
do
	if [[ ! $repeat -eq 1 ]]
	then
		break
	fi
	game
done
