#!/bin/bash
cd ~
mkdir homework1
cd homework1
git init
echo "this is an initial text file" >> textfile.txt
git add textfile.txt
curl -u 'vboldovskyy' https://api.github.com/user/repos -d '{"name":"homework1"}'
git remote add origin git@github.com:vboldovskyy/homework1.git
git commit -m "this is an initial commit to master branch"
git push origin master
git checkout -b newbranch
echo "now we modify text file" >> textfile.txt
git stage textfile.txt 
git commit -m "modified original textfile"
git push origin newbranch
git checkout master
git merge newbranch 
git push origin master

