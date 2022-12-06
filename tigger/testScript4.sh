#!/bin/dash
./tigger-clear
./tigger-init
echo hello >a
./tigger-add a
./tigger-commit -m commit-A
./tigger-branch b1
echo world >>a
./tigger-checkout b1