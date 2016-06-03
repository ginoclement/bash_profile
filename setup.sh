#!/bin/bash

git clone git@github.com:ginoclement/bash_settings.git
cp -vf bash_settings/* ~/

if [ -f setup.sh ]; do
	rm setup.sh
fi
