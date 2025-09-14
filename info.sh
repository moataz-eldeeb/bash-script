#!/bin/bash

echo "please choose"
echo "a: date"
echo "b: list files"
echo "c: list users"
echo "d: uptime"
read input
case $input in
	a|A)date;;
	b|B)ls -l;;
	c|C)who;;
	d|D)uptime;;
esac
