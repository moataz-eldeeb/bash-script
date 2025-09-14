#!/bin/bash

if [ -z $@ ]
then
	echo "no file"
exit 1
fi

file=$@

if [ -x $file ]
then
	echo "oredy done"
elif [ -e $file ]
then
	chmod +x $file
	echo "done"
else
	echo "does not"
fi
