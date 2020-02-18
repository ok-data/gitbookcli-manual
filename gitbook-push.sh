#!/bin/bash

echo -e "\ngitbook install && gitbook build..."
gitbook install && gitbook build

echo -e "\nchange branch to gh-pages..."
git checkout -b gh-pages

echo -e "\npulling current gh-pages..."
git pull origin gh-pages --rebase

echo -e "\ncopying _book data to current place..."
cp -R _book/* .

echo -e "\nremoving node_modules and _book directory files..."
git clean -fx node_modules
git clean -fx _book

echo -e "\nadding newely added files..."
git add -A

read -p "please type commit message: " commit_message
git commit -m "$commit_message"

echo -e "\npushing to gh-pages..."
git push origin gh-pages

echo -e "\nFINISH!!"
