#!/bin/bash

#Author mcdwayne 
#email 1dwayne.mcdaniel @ gmail.com

# DESCRIPTION TO GO HERE

# Given command 
# vegan git@github.com:CalderaWP/Caldera-Forms.git [<single composer command>]

# It should do
# git clone git@github.com:CalderaWP/Caldera-Forms.git
# cd Caldera-Forms
# Check if npm is installed globally before using npm cli
# check if /composer.json exists, else exit
# check if package.json exits, else exit
# Check if composer is installed globally before using composer cli
# composer install - gives an option to add a command argument
# npm install


# if you give it an address like this "https://gitlab.com/dwayne/vegan" it still works



if [ -z "$1" ]; then
	echo -n "Enter full git repo address (git@github....) : " && read GITADDRESS 
else
	GITADDRESS=$1
fi

# Parse the filename from end of Git chich is what we are calling the folder as well

filename=$(basename "$GITADDRESS")
foldername="${filename%.*}"

# do the git clone thing
git clone $GITADDRESS $foldername 

# note: this will not change your terminal PWD, just the internal shell PWD for the rest of this script run
cd $foldername

#Check to see if Node is installed
 echo "Checking if Node is installed ..."
    if command --version node &>/dev/null; then
        echo "Please Install Latest Version Of Node"
      exit  
    else
        echo "Node has already been installed."
        sleep 2
        updateNode
    fi

#Check to see of Composer is installed 
 echo "Checking if Composer is installed ..."
    if command --version composer &>/dev/null; then
        echo "Please Install Composer"
        exit
    else
        echo "Composer has already been installed."
    fi

#  Check to see if the composer.json and package.json files exist

if [ ! -f composer.json ]; then
    echo ${foldername} "/composer.json File not found!"
    exit
fi
echo "Found" ${foldername} "/composer.json"

if [ ! -f package.json ]; then
    echo ${foldername} "/package.json not found!"
    exit
fi
echo "Found" ${foldername} "/package.json"


#  composer install with optional arguments

if [ -z "$2" ]; then
	echo -n "Want to add an argument for composer? (Enter ONLY one) " && read COMPOSERARG
		if [ -z "$COMPOSERARG" ]; then
		composer install
		else
		composer install $COMPOSERARG
		fi	
	else
	composer install $2
fi



# npm install

echo -n "Want to add an argument for npm? (Enter ONLY one) " && read NPMARG
        if [ -z "$NPMARG" ]; then
        npm install
        else
        npm install $NPMARG
        fi  

# Remeber that thing about cd $foldername from before? Well, reminding you of it at the end
echo "NOTE: You are still in your orignial PWD, cd to access the code"

