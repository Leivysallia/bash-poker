#!/bin/bash

	echo "codex[$iter]="

iter=0

while read -r line
do
	echo "codex[$iter]=""$line"
	iter=$(( iter + 1 ))
done < codex > poker.bash