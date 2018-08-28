#!/bin/bash
kcc -fissue-report=my_errors.json main.c -o bogosort
echo "9 43 27 12 5 9 3" | ./bogosort
rv-html-report my_errors.json -o report
rv-upload-report `pwd`/report