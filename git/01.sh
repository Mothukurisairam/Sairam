#!/bin/bash
echo -n "enter file name :"
read x
git show --name-only -r HEAD | sed -n '7,15p' >> $x

input="$x"

while IFS= read -r line
do

   sudo cp -r $line /home/sai/folder

done <$x

