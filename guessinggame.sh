#!/usr/bin/bash

#fielname: guessinggame.sh

file_count=$(ls | wc -l)

prompt() {
        read -p "Guess the count of files in the current directory. >>" guess_count
}

prompt

while [ "${guess_count}" -ne "${file_count}" ]
do
        if [ "${guess_count}" -lt "${file_count}" ]
        then
                echo "The guess count is too low than actual."
        elif [ "${guess_count}" -gt "${file_count}" ]
        then
                echo "The guess count is too high than actual."
        fi
	prompt

done
exit
