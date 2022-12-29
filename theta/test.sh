#!/bin/bash

source vars.bash
source functions.bash
shuffle() {
    IFS=$'\n'
    mapfile -t used < <(shuf -i 0-51 -n10)
    unset IFS

    for iter in "${used[@]}"; do
        iteration+=("${library[iter]}")
    done
}
ruffle() {

    IFS=$'\n'
    mapfile -t mchand < <(sort -n <<<"${mchand[*]}")
    unset IFS

}
deal() {
    mchand[0]="${iteration[0]}"
    mchand[1]="${iteration[1]}"
    mchand[2]="${iteration[2]}"
    mchand[3]="${iteration[3]}"
    mchand[4]="${iteration[4]}"
    ruffle
}


time shuffle
time deal

echo "${iteration[@]}"
echo ""
echo "${mchand[@]}"
