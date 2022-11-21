#!/bin/bash

clear & wait

source functions.bashrc
source vars.bashrc

iter=41
IFS=$OLDIFS

until [[ $iter -lt 0 ]]
do
pull=$(( RANDOM % 42 ))
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
pull=$(( RANDOM % 42 ))
fi
done > test.bash

##	sort test.bash > temp
##	mv -fv temp test.bash

mchand[0]=${iteration[0]}
ophand[0]=${iteration[1]}
mchand[1]=${iteration[2]}
ophand[1]=${iteration[3]}
mchand[2]=${iteration[4]}
ophand[2]=${iteration[5]}

echo ${mchand[0]}
echo ${mchand[1]}
echo ${mchand[2]}
echo $''
echo ${ophand[0]}
echo ${ophand[1]}
echo ${ophand[2]}


