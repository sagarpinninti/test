#!/bin/bash
for img in $* ; do
curl -sq https://registry.hub.docker.com/v1/repositories/$img/tags |mjson|grep name|grep -E '*-alpine|alpine-*|v*-debian'|
grep -Ev "master|beta|latest|onbuild|test|unstable|light|full|rc|preview|onbuild|arm|armhf|prel" |tr -d ':|"'|sed 's/name//'|sort -nr|head -2|sed 's/[[:space:]]//g'|
awk '!NF || !seen[$0]++'|awk 'NF > 0'|head -2|sed -E "s#^#${img}:#"
done
