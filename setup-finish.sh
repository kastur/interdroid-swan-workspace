#!/bin/sh

for i in `cat android-subprojects`
do
	pushd   $i && git checkout -- .classpath && popd
done