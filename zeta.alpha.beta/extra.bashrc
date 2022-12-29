#!/bin/bash


debugmull() {

	checkmull=${#hold[@]}

	if [[ checkmull -gt 0 ]]; then
		read -n1 -r -p $'+Keep Suggested? [0/1]: ' keep
		while [[ keep -gt 1 || keep -lt 0 ]]; do
			echo $'>Invalid Input: '
			read -n1 -r -p $'+Keep Suggested? [0/1]: ' keep
		done

	else

		keep=0

	fi

	if [[ keep -eq 1 ]]; then
		hold
	else
		read -n1 -r -p $'+How Many to Discard? [0-3]: ' dis
		while [[ dis -gt 3 || dis -lt 0 ]]; do
			echo $'>Invalid Input: '
			read -n1 -r -p $'+How Many to Discard? [0-3]: ' dis
		done

		if [[ dis -eq 1 ]]; then
			read -n1 -r -p $'\n|Index Number [1-5]: ' one
			index
			mchand[one]=${iteration[$dex]}
			dex
		fi

		if [[ dis -eq 2 ]]; then
			read -n1 -r -p $'\n|Index Number [1-5]: ' one
			read -n1 -r -p $'\n|Index Number [1-5]: ' two
			while [[ $two -eq $one ]]; do
				read -n1 -r -p $'\n>Invalid, Select. [1-5]: ' two
			done
			index
			mchand[one]=${iteration[$dex]}
			dex
			mchand[two]=${iteration[$dex]}
			dex
		fi

		if [[ dis -eq 3 ]]; then
			read -n1 -r -p $'\n|Index Number [1-5]: ' one
			read -n1 -r -p $'\n|Index Number [1-5]: ' two
			while [[ $two -eq $one ]]; do
				read -n1 -r -p $'\n>Invalid, Select. [1-5]: ' two
			done
			read -n1 -r -p $'\n|Index Number [1-5]: ' three
			while [[ $three -eq $one || $three -eq $two ]]; do
				read -n1 -r -p $'\n>Invalid, Select. [1-5]: ' three
			done
			index
			mchand[one]=${iteration[$dex]}
			dex
			mchand[two]=${iteration[$dex]}
			dex
			mchand[three]=${iteration[$dex]}
			dex
		fi
	fi

	echo $'\n'

	ruffle

}

NOTWORKINGdebugmull() {

	checkmull=${#hold[@]}

	if [[ checkmull -gt 0 ]]; then
		read -n1 -r -p $'+Keep Suggested? [0/1]: ' keep
		while [[ keep -gt 1 || keep -lt 0 ]]; do
			echo $'>Invalid Input: '
			read -n1 -r -p $'+Keep Suggested? [0/1]: ' keep
		done

		if [[ keep -eq 1 ]]; then
			hold
		else
			read -n1 -r -p $'+How Many to Discard? [0-3]: ' dis
			while [[ dis -gt 3 || dis -lt 0 ]]; do
				echo $'>Invalid Input: '
				read -n1 -r -p $'+How Many to Discard? [0-3]: ' dis
			done

			if [[ dis -eq 1 ]]; then
				read -n1 -r -p $'\n|Index Number [1-5]: ' one
				index
				mchand[one]=${iteration[$dex]}
				dex
			fi

			if [[ dis -eq 2 ]]; then
				read -n1 -r -p $'\n|Index Number [1-5]: ' one
				read -n1 -r -p $'\n|Index Number [1-5]: ' two
				while [[ $two -eq $one ]]; do
					read -n1 -r -p $'\n>Invalid, Select. [1-5]: ' two
				done
				index
				mchand[one]=${iteration[$dex]}
				dex
				mchand[two]=${iteration[$dex]}
				dex
			fi

			if [[ dis -eq 3 ]]; then
				read -n1 -r -p $'\n|Index Number [1-5]: ' one
				read -n1 -r -p $'\n|Index Number [1-5]: ' two
				while [[ $two -eq $one ]]; do
					read -n1 -r -p $'\n>Invalid, Select. [1-5]: ' two
				done
				read -n1 -r -p $'\n|Index Number [1-5]: ' three
				while [[ $three -eq $one || $three -eq $two ]]; do
					read -n1 -r -p $'\n>Invalid, Select. [1-5]: ' three
				done
				index
				mchand[one]=${iteration[$dex]}
				dex
				mchand[two]=${iteration[$dex]}
				dex
				mchand[three]=${iteration[$dex]}
				dex
			fi
		fi

	else

		read -n1 -r -p $'+How Many to Discard? [0-3]: ' dis
		while [[ dis -gt 3 || dis -lt 0 ]]; do
			echo $'>Invalid Input: '
			read -n1 -r -p $'+How Many to Discard? [0-3]: ' dis
		done

		if [[ dis -eq 1 ]]; then
			read -n1 -r -p $'\n|Index Number [1-5]: ' one
			index
			mchand[one]=${iteration[$dex]}
			dex
		fi

		if [[ dis -eq 2 ]]; then
			read -n1 -r -p $'\n|Index Number [1-5]: ' one
			read -n1 -r -p $'\n|Index Number [1-5]: ' two
			while [[ $two -eq $one ]]; do
				read -n1 -r -p $'\n>Invalid, Select. [1-5]: ' two
			done
			index
			mchand[one]=${iteration[$dex]}
			dex
			mchand[two]=${iteration[$dex]}
			dex
		fi

		if [[ dis -eq 3 ]]; then
			read -n1 -r -p $'\n|Index Number [1-5]: ' one
			read -n1 -r -p $'\n|Index Number [1-5]: ' two
			while [[ $two -eq $one ]]; do
				read -n1 -r -p $'\n>Invalid, Select. [1-5]: ' two
			done
			read -n1 -r -p $'\n|Index Number [1-5]: ' three
			while [[ $three -eq $one || $three -eq $two ]]; do
				read -n1 -r -p $'\n>Invalid, Select. [1-5]: ' three
			done
			index
			mchand[one]=${iteration[$dex]}
			dex
			mchand[two]=${iteration[$dex]}
			dex
			mchand[three]=${iteration[$dex]}
			dex
		fi

	fi

	echo $'\n'

	ruffle

}