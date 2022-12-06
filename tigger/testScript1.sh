#!/bin/dash
rm a b c
./tigger-clear.sh
./tigger-init.sh
touch a b c
echo "abcd" > a
./tigger-add.sh a
./tigger-commit.sh -m "Message0"
./tigger-add.sh b
./tigger-commit.sh -m "Message1"
echo "b :" | cat b
echo "abcd" > b
echo "b :" | cat b
./tigger-commit.sh -a -m "Message2"

