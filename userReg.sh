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
pattern1="^([a-z0-9\_\.\-]+)@([a-z]+)\.([a-z]{2,5})(\.[a-z]{2,5})?$"
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
read -p "Enter the password = " pass
pattern3="^([a-zA-Z0-9]+)?[A-Z]([a-zA-Z]+)?.{8,}$"
if [[ $pass =~ $pattern3 ]]
then
        echo "password is having atleast one capital letter";
else
        echo "minimum 8 characters and required atleast one should be in capital"
        exit
fi
pattern4="^([a-zA-Z0-9]+)?[0-9]([a-zA-Z]+)?.{8,}$"
if [[ $pass =~ $pattern4 ]]
then
	echo "password is having atleast one numeric digit"
else
        echo "minimum 8 characters and required atleast one numeric digit "
pattern5="^(?=[^.,:;'!@#$%^&*_+=|(){}[?\-\]\/\\]*[.,:;'!@#$%^&*_+=|(){}[?\-\]\/\\][^.,:;'!@#$%^&*_+=|(){}[?\-\]\/\\]*$).{8}$"
if [[ $pass =~ $pattern5 ]]
then
	echo "password is having one special character"
else
	echo "password should have exactly one special character"












