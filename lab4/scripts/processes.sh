#!/bin/bash
echo "Процессов пользователя:"
echo $USER
ps -hU $USER | wc -l
echo "Процессов пользователя root:"
ps -hU root | wc -l
