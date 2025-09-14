#!/bin/bash
while true
do
echo "==============================="
echo "what do you want to do?"
echo "1: creat a bach script file"
echo "2: creat a normal file"
echo "3: creat a folder"
echo "4: remove the file or folder "
echo "5: view the contents of the folder"
echo "6: Exit"

echo "==============================="

read INPUT
case $INPUT in
	1)echo "1)How many file do you need?"
		read count
		while [ $count -gt 0 ]
		do
			echo "2)give me a name for new file?"
			read Namef
			touch $Namef
			chmod +x $Namef
			echo "#!/bin/bash" > $Namef
			echo "$Namef creat Done"
			count=$(($count - 1))
		done;;
	
	2)echo "1)How many file do you need?"
		read count
		while [ $count -gt 0 ]
		do
			echo "2)give me a name for new file?"
			read Namef
			touch $Namef
			chmod +x
			echo "$Namef creat Done"
			count=$(($count - 1 ))
		done;;
		
	3)echo "1)How many folder do you need?"
		read count
		while [ $count -gt 0 ]
		do
			echo "2)give me a name for new folder?"
               	 	read Namef
                	touch $Namef
                	echo "$Namef creat Done"
                	count=$(($count - 1 ))
		done;;

	4)echo "1)how many files you wont delet?"
		read count
		while [ $count -gt 0 ]
		do
			echo "2)give me a name file to delet?"
			read Namef
			rm -r $Namef
			echo "$Namef delet Done"
			count=$(($count - 1))
		done;;

	5)ls -l;;

	6)echo "Bye"
	sleep 1
	clear
	exit 1;;
esac
done

