#!/bin/bash

#
#  repair_wheels.sh - auditwheel repair linux wheels
#
#  Date created: Dec 23, 2020
#
#  Author:       See AUTHORS
#
#  Arguments:
#    None
#


PLAT="manylinux2014_x86_64"


pip install auditwheel


for whl in ./dist/*.whl; do
    auditwheel repair "$whl" --plat "$PLAT" -w ./dist 
 done


rm -rf ./dist/*-linux_x86_64.whl