#!/bin/bash
Count=`echo -e "$USER$HOME" | tr -d "\n" | wc -c`
echo "$USER $HOME $Count"
