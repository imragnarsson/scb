#!/bin/bash

clear

cat <<\EOF

  __________________ __________ 
 /   _____/\_   ___ \\______   \
 \_____  \ /    \  \/ |    |  _/     Create by Thomas LEGENDRE
 /        \\     \____|    |   \
/_______  / \______  /|______  /
        \/         \/        \/ 

EOF

echo "Hey $USER, welcome to System Backup Configuration"

echo

read -p "Can you enter the name of the directory to backup :" directory

if [ -e "$directory" ]

then 

echo "This directory exists"

else

echo "Your directory is being created"

echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'


touch $directory

fi


read -p "Can you enter the path of the backup directory :" backup

if [ -e "$backup" ]

then 

echo "This directory exists"

else

echo "Your directory is being created"

echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'

mkdir -p $backup

echo "Backup is in progress. Please wait a moment"

echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'

fi

cp $directory $backup

echo "We check if everything went well"

if [ -e "$backup" ]; then
	echo "Backup successful"
else 
	echo "Sorry something went wrong. You can start again."
fi
