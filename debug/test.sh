#!/bin/bash

shopt -s lastpipe

source vars.debug.bash


mchand[0]="${library[38]}"
mchand[1]="${library[31]}"
mchand[2]="${library[37]}"
mchand[3]="${library[33]}"
mchand[4]="${library[30]}"

temparray=()

##shuf -e "${library[@]}" | mapfile -t iteration

##readarray -t mchand |printf '%s\n' "${mchand[@]}" |sort -n | mapfile -t temparray

readarray -t mchand < <(printf '%s\n' "${mchand[@]}" |sort -n)
readarray -t library < <(printf '%s\n' "${library[@]}" |shuf -e)

##mchand=("${temparray[@]}")
echo "${mchand[@]}"

echo ""

echo "${library[@]}"

ruffle () {

IFS=$'\n' mchand=($(sort -n <<<"${mchand[*]}"))
unset IFS

}

