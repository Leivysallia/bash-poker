#!/bin/bash

keepsuggests() {

    read -n1 -r -p $'+Keep Suggested? [0/1]: ' keep
    while [[ "$keep" != "1" && "$keep" != "0" ]]; do
        echo $'>Invalid Input: '
        unset keep
        read -n1 -r -p $'+Keep Suggested? [0/1]: ' keep
    done

}

re='[1-5]'

read -n1 -r -p $'+How Many to Discard? [0-3]: ' dis
echo ""
iter=1
for ((i = 0; i < $dis; i++)); do
    read -n1 -r -p $'\n|Index Number [1-5]: ' var
    while [[ ! $var =~ $re ]]; do
        echo $'>Invalid Input: '
        unset var
        read -n1 -r -p $'\n|Index Number [1-5]: ' var
    done
    redex
    mchand[var]=${iteration[5]}
done
