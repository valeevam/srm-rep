#!/bin/bash
case $1 in
        -l )
        rf="$HOME/NOTES"
        if [ ! -e "$rf"  ]
        then
                echo $rf NOT exists
                touch $rf
                echo AND now $rf created!
        fi
        while read line
        do
        echo $line >> $rf
        done
        echo "saved in file"
;;

-g )
        ar="${*:2}"
if [ ${#ar} -eq 0 ]
        then name=РАБОТЯГИ
        else name=$ar
fi
echo ЗАПУСКАЕМ
echo ░ГУСЯ░▄▀▀▀▄░$name░░
echo ▄███▀░◐░░░▌░░░░░░░
echo ░░░░▌░░░░░▐░░░░░░░
echo ░░░░▐░░░░░▐░░░░░░░
echo ░░░░▌░░░░░▐▄▄░░░░░
echo ░░░░▌░░░░▄▀▒▒▀▀▀▀▄
echo ░░░▐░░░░▐▒▒▒▒▒▒▒▒▀▀▄
echo ░░░▐░░░░▐▄▒▒▒▒▒▒▒▒▒▒▀▄
echo ░░░░▀▄░░░░▀▄▒▒▒▒▒▒▒▒▒▒▀▄
echo ░░░░░░▀▄▄▄▄▄█▄▄▄▄▄▄▄▄▄▄▄▀▄
echo ░░░░░░░░░░░▌▌▌▌░░░░░
echo ░░░░░░░░░░░▌▌░▌▌░░░░░
echo ░░░░░░░░░▄▄▌▌▄▌▌░░░░░
;;

-f )
if [ ${#2} -ne 0 ]
then
 rf="$HOME/NOTES"
 grep -ni "$2" $rf | cat
 fi

 ;;

-h ) echo "This is help page
        -h show this help page
        -l multiline lines input mode, put CTRL+D to exit , every your line saves in NOTES
        -g <name> show a pretty goose for name, name is optional
        -f <string> find a <string> in NOTES and show you number of string and string
        <string> when you run notes only with <string> - notes saves <string> in NOTES"
        ;;
* )

        rf="$HOME/NOTES"
        if [ ! -e "$rf"  ]
        then
                echo $rf NOT exists
                touch $rf
                echo AND now $rf created!
        fi

        echo $* >> $rf
        ;;

esac
