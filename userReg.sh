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
read -p "Enter your email id " email
pattern1="^([a-z0-9\_\.\-]+)@([a-z]+)\.([a-z\.]+)$"
if [[ $email =~ $pattern1 ]]
then
        echo $email;
else
        echo "please pay attention on @ and . "
        exit
fi
read -p "Enter the mobile number = " number
pattern2="^([1-9]{2}[ ][0-9]{10})$"
if [[ $number =~ $pattern2 ]]
then
        echo $number;
else
        echo "mind the space between country code and contact-number"
        exit
fi
















