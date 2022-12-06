#!/bin/dash




tigger-init >__stdout.txt

out=$(cat __stdout.txt)
ans="Initialized empty tigger repository in .tigger"
if [ "$out" != "$ans" ]
then
    pass1=0
fi
rm __stdout.txt

tigger-init >__stdout.txt
rm __stdout.txt

if [ "$pass1" -eq 1 ]
then
    echo "Test00 passed"
fi