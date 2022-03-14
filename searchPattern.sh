#!/bin/bash
echo "Enter the pattern:"
read pattern
grep -Rli "$pattern" <file_names
if [ $? -eq 0 ]
	then
		echo "Below files contain the pattern :"
		cat -n file_names
else
echo "Error: No files contain the pattern"
fi

