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


userFirstName
userLastName
