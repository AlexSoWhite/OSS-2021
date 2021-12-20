#!/bin/bash
DIR="$1"
echo "Каталоги:"
ls -l $DIR | grep ^d
echo ""
echo "Обычные файлы:"
ls -l $DIR | grep ^-
echo ""
echo "Символьные ссылки:"
ls -l $DIR | grep ^l
echo ""
echo "Символьные устройства:"
ls -l $DIR | grep ^c
echo ""
echo "Блочные устройства:"
ls -l $DIR | grep ^b
