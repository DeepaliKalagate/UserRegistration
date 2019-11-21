#!/bin/bash 
shopt -s extglob
echo "Welcome to User Ragistration Using Regex"

#function for User First Name Validation
function userFirstName()
{
	echo "Enter First Name of User : "
	read firstName

	firstNamePattern=[A-Z][a-z]+{3,20}
	if [[ $firstName =~ $firstNamePattern ]];
	then
        	echo "Welcome $firstName"
	else
        	echo "Invalid User Name : $firstName"
	fi
}


#function for User Last Name Validation
function userLastName()
{
        echo "Enter Last Name of User : "
        read lastName

        lastNamePattern=[A-Z][a-z]+{3,20}
        if [[ $lastName =~ $lastNamePattern ]];
        then
                echo "Last Name of User :  $lastName"
        else
                echo "Invalid User Name : $lastName"
        fi
}

#function for User Email Id Validation
function userEmailValidation()
{
	echo "Enter User Email Id : "
	read email

	emailPattern="^([a-zA-Z0-9]+)([+_-.][a-zA-Z0-9]+)?+[@][a-zA-Z0-9]+[.][a-z]{2,3}*([.]?[a-z]{2,3})?$"
	if [[ $email =~ $emailPattern ]];
	then
        	echo "User Email Id : $email"
	else
        	echo "Invalid Email Id : $email"
	fi
}

#function for User Mobile Number Validation
function userMobileNumber()
{
        echo "Enter User Mobile Number : "
        read mobileNumber

        mobilePattern='^[0-9]{2}[: :][0-9]{10}$' 
        if [[ $mobileNumber =~ $mobilePattern ]];
        then
                echo "User Mobile Number : $mobileNumber"
        else
                echo "Invalid Mobile Number : $mobileNumber"
        fi
}

#function for User Password Validation
function userPassword()
{
        echo "Enter Password : "
        read password

	#passwordPattern="[a-z]*[A-Z]+[a-z]*{8}"
	#passwordPattern="[a-z]*[A-Z]+[a-z]*(0-9]*{8}"
	passwordPattern="[a-z]*[A-Z]+[a-z]*(0-9]*{8}"
	if [[ $password =~ $passwordPattern ]]
        then
                echo "Valid Password"
        else
                echo "Invalid Password "
        fi
}


userFirstName
userLastName
userEmailValidation
userMobileNumber
userPassword
