#!/bin/dash
./tigger-clear
./tigger-init
touch a
./tigger-add a
./tigger-commit -m commit-0
./tigger-branch b1
./tigger-checkout b1
touch b
./tigger-add b
./tigger-commit -m commit-1
./tigger-checkout master