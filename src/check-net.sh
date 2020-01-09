#!/bin/bash

ping www.google.com -c 5 2>&1
if [ $? -eq 0 ]
then
    echo ' [OK] Connection Internet'
else
    echo ' [  ] Connection Internet'
    exit 1
fi;