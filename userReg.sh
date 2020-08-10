#!/bin/bash -x
#echo "this is master class"

read -p "Enter the first name = " firstname
pattern="^([[:upper:]]{1})([[:lower:]]{2,})$"
if [[ $firstname =~ $pattern ]]
then
        echo $firstname;
else
	echo "The first letter should be in capital"
        exit
fi

read -p "Enter the last name = " lastname
if [[ $lastname =~ $pattern ]]
then
        echo $lastname;
else
        echo "The first letter should be in capital"
	exit
fi

