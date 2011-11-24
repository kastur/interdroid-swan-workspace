#!/bin/bash

git submodule update --init
for i in `cat android-subprojects`
do
    mkdir $i/gen
done