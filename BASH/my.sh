#!/bin/bash
# this is a bash script
a=Hello
b='Good Morning'
c=16
d=$(ping -c 1 emaple.com | grep 'bytes from' | cut -d = -f 4)
e=2
f=$((e+2))
echo $a
echo $b
echo $c
echo $a $b "$c! apples"
echo "The ping was $d"
echo $f

[[ 'cat' == 'cat' ]]
echo $?

#color
flashred="\033[5;31;40m"
red="\033[31;40m"
none="\033[0m"

echo -e $flashred"ERROR: "$none$red"Something went wront"$none

#printf/date
today=$(date +"%d-%m-%Y")
time=$(date +"%H:%M:%S")
printf -v d "Current User:\t%s\nDate:\t\t%s @ %s\n" $USER $today $time
echo $d

#array
h=("apple" "banana" "cherry")
h[5]='kiwi'
b+=("mango")
echo ${h[2]}
echo ${h[@]}
echo ${h[@]: -1}

cat<< EndOfText
This is a 
multiline
text string
EndOfText

ftp -n <<- DoneWithTheUpdate
	open mirrors.xmission.com
	user anonymous nothinghere
	ascii
	cd gutenberg
	get GUTINDEX.01
	bye
DoneWithTheUpdate
