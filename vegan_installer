#!/bin/bash

if [ ! -d "$HOME/bin" ]; then
  	mkdir $HOME/bin 
fi

chmod a+x vegan
cp vegan $HOME/bin/vegan


if [ ! -d "$HOME/.bash_profile" ]; then
	echo 'export PATH=$PATH:$HOME/bin' >> $HOME/.bashrc
	source ~/.bashrc
else
	echo 'export PATH=$PATH:$HOME/bin' >> $HOME/.bash_profile
	source ~/.bash_profile
fi

