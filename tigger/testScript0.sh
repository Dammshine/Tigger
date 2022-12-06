#!/bin/dash

./tigger-clear.sh
./tigger-init.sh
touch a b c
./tigger-add.sh a b c d
./tigger-add.sh a
./tigger-add.sh a
./tigger-commit.sh -m "Message0"
./tigger-add.sh a b
./tigger-commit.sh -m "Message1"
./tigger-add.sh a b
./tigger-commit.sh -m "Message1"
./tigger-add.sh c
./tigger-commit.sh -m "Message2"
echo "abcd" > a
./tigger-add.sh a
./tigger-commit.sh -m "Message3"
echo "abcd" > b
./tigger-commit.sh -a -m "Message4"
