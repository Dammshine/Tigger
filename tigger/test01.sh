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

out=`cat __stdout.txt`
ans="tigger-init: error: .tigger already exists"
if [ "$out" != "$ans" ]
then
    pass2=0
fi
rm __stdout.txt

if [ "$pass1" -eq 1 ]
then
    echo "Test01 passed"
fi
if  [ "$pass2" -eq 1 ]
    echo "Test01 failed"
fi