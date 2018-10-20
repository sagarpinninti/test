#!/bin/bash
t="$(date '+%F%H%M')"
git remote set-url origin git@github.com:sagarpinninti/test.git;
#git remote add origin git@github.com:sagarpinninti/test.git;
git add *;
git commit -am $t;
git push origin master --force

