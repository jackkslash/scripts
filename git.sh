#!/bin/bash
mkdir $1
cd $1
git init .
touch .gitignore
echo "# ${1}" > README.md
git add .
git commit -m "initial commit"

git remote add origin "git@github.com:mvotho/"$1".git"

git branch -m main
git push origin main

echo "Done. Git init at git@github.com:mvotho/"$1".git"