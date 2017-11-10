#vegan.sh
#####Because the food is better

Version 1.0

Installation instructions for MAC
1. git clone https://github.com/mcdwayne/vegan.sh/
2. on MAC either double click vegan_installer 
  or
  2b. cd to downloaded folder 
      $ ./vegan_installer

Usage: 
$ vegan [github address] [<single composer commands>]

Given command: 
vegan git@github.com:CalderaWP/Caldera-Forms.git [<single composer command>]

It should:

git clone git@github.com:CalderaWP/Caldera-Forms.git

cd Caldera-Forms

Check if npm is installed globally before using npm cli

check if /composer.json exists, else exit

check if package.json exits, else exit

Check if composer is installed globally before using composer cli

composer install - gives an option to add a command argument

npm install - gives an option to add a command argument


if you give it an address like this "https://gitlab.com/dwayne/vegan" it still works


