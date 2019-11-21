#!/bin/bash 
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
