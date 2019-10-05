#!/bin/bash -e
REQFILE=requirements.txt
QUERY=$(echo $@ | sed 's/\ /\\\|/g')

pip install $@
pip freeze | grep -i $QUERY >> $REQFILE
sort -o $REQFILE $REQFILE
