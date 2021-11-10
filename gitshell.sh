#!/bin/bash
echo -n "enter the prefence output filename :"
read x

git show --name-only -r HEAD | sed -n '7,100p'>> $x


cat $x
