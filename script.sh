#!/bin/bash

if [ $1 -gt $2 ]; then
	echo "the 1st parametr is greater than the 2nd one"
	grep -w '\<alias' ~/.bashrc > file
	grep -v "#" file > updated_file
	rm file
	sed -i 's/^ *//' updated_file
	cat updated_file
	rm updated_file
else
	echo  "the 1st parametr is less or equal to the second one"
	FILESIZE=$(stat -c%s $0)
	echo "$FILESIZE"
fi



