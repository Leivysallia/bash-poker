#!/bin/bash

clear

source functions.bash
source vars.bash

flag="HIGH"

iter=51
IFS=$OLDIFS

until [[ $iter -lt 0 ]]
do
pull=$(( RANDOM % 52 ))
codex[$pull]="${index[$pull]}"

if [[ ${index[$pull]} -ne 0 ]]
then
	index[$pull]=$'0'
fi
if [[ ${codex[$pull]} -ne 0 ]]
then
iteration[$iter]=${library[$pull]}
echo ${library[$pull]} 
codex[$pull]=$'0'
iter=$(( iter - 1 ))
else
	RANDOM=$RANDOM
pull=$(( RANDOM % 52 ))
fi
done > test.bash

deal

render
##iswin

mull

render
##iswin

