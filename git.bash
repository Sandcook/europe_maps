#!/bin/bash
echo "Nom :"
read name;
git config --global user.name $name
echo "Voulez-vous pull ? (1 : OUI  |||| 0 : NON)"
read qpull;
if [ $qpull = "1" ]
then
    git pull
fi
git add .
echo "Message du commit :"
read qCommit
git commit -m "$qCommit"
git push  
