#!/bin/bash
t="$(date '+%F%H%M')"
git remote add origin git@github.com:sagarpinninti/test.git
git add *;
git commit -am $t;
git push origin master --force

