#!/bin/bash

git clone git@github.com:ginoclement/bash_settings.git
cp -vrf bash_settings/ ~/


# Delete unnecessary files
if [ -f setup.sh ]; then
	echo "Deleting Setup Script"
	rm setup.sh
fi

echo "Deleting README.md"
rm README.md

