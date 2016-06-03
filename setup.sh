#!/bin/bash
#
# This is a very ugly way to handle this, I might fix it
# in the future by exluding directories in the copy but
# it works.

git clone git@github.com:ginoclement/bash_settings.git
cp -vrf bash_settings/. ~/


# Delete unnecessary files
if [ -f ~/setup.sh ]; then
	echo "Deleting Setup Script"
	rm setup.sh
fi

# Clean up in case script wasn't executed from home
# directory.
if [ -f setup.sh ]; then
	echo "Deleting Setup Script"
	rm setup.sh
fi

echo "Deleting README.md"
rm ~/README.md

echo "Deleting ~/.git folder"
rm -rf ~/.git

