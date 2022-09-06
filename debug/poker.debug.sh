#!/bin/bash

clear

source functions.debug.bash
source vars.debug.bash

debug_game

while [[ $repeat -eq 1 ]]
do
	if [[ ! $repeat -eq 1 ]]
	then
		break
	fi
	debug_game
done
