#!/bin/bash

git submodule update --init

if [ $? != 0 ] ; then
    echo "Unable to run git submodule update --init"
    exit 1
fi

for i in `cat android-subprojects`
do
    if [ ! -d $i/gen ] ; then
	mkdir $i/gen || die unable to make gen directory
    fi
done