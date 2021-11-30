#!/bin/bash

#Please provide an input file name, which will be created as the new file and save the names in that file.
echo -n "enter file name :"
read x
#Taking input from the git commit and selecting files from the recent commit.
git show --name-only -r HEAD | sed -n '7,50p' >> $x

input="$x"

while IFS= read -r line
do
   sudo cp -r $line /home/sai/folder

done <$x

