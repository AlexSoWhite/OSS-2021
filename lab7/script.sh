#!/bin/bash
gcc $1.c -o $1
./$1 &
pstree | grep $1
