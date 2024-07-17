#!/usr/bin/env bash
echo "hello"
sleep 1.3
echo -e "oh what's your name : \c\c"
read name
echo "thanks your name is ${name} and you are in the directory $(pwd) and you are loged in as $(whoami)"
echo "have a great day!!"
