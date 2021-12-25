#!/bin/bash

# Copy the files from the recent commit message and paste it into the destination path
# Enter the file name to store recent git commit files and as documentation

echo -n "enter file name to save recent git commit files as a documentation :"
read x

#Taking input from the git commit and selecting files from the recent commit.
git show --name-only -r HEAD | sed -n '7,50p' >> $x

input="$x"

while IFS= read -r line
do
   sudo cp -r $line /home/sai/folder

done <$x

