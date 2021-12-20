#!/bin/bash
TMP_FILE="/tmp/txts"
touch $TMP_FILE
find ~ -name "*.txt" > $TMP_FILE
cat $TMP_FILE
du -h $TMP_FILE
strings $TMP_FILE | wc -l
rm $TMP_FILE
