#!/bin/bash -e
REQFILE=requirements.txt
QUERY=$(echo $@ | sed 's/\ /\\\|/g')

pip install $@
pip freeze | grep $QUERY >> $REQFILE
sort -o $REQFILE $REQFILE
