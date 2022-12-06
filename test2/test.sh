#!/bin/dash


2041 tigger-init
echo hello >a
2041 tigger-add a
2041 tigger-commit -m commit-A
2041 tigger-branch b1
2041 tigger-checkout b1
echo world >>a
2041 tigger-add a
2041 tigger-commit -m commit-A
2041 tigger-checkout master
echo world >>a
2041 tigger-status
2041 tigger-checkout b1
2041 tigger-status