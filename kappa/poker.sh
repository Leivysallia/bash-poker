#!/bin/bash

clear

source functions.bash
source vars.bash

game

while [[ $repeat -eq 1 ]]
do
	if [[ ! $repeat -eq 1 ]]
	then
		return 1
	fi
	game
done
