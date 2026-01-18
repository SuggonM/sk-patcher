#!/bin/env sh
set -e

if [ ! $(whoami) = "root" ]; then
	echo "###\033[96m Soul Knight Patcher \033[0m###"
	echo "Modifies user data to unlock various contents."
	echo
	echo 'This script needs to be run as root to access `/data`.'
	exit 1
fi

xml_file="/data/data/com.ChillyRoom.DungeonShooter/shared_prefs/com.ChillyRoom.DungeonShooter.v2.playerprefs.xml"

if [ -e "$xml_file" ]; then
	echo "Patching file: $xml_file"
	echo
else
	echo "File not found: $xml_file"
	exit 1
fi

sed -i.old -E -f ./substitutions.sed $xml_file

rundiff() {
	! diff --color -s -U0 $xml_file.old $xml_file
}

rundiff
rundiff > ./patch.diff

echo
echo "Saved backup xml: $xml_file.old"
echo "Saved diff file: ./patch.diff"
