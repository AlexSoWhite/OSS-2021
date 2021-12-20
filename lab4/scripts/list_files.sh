#!/bin/bash
echo "Каталоги:"
ls -l | grep ^d
echo ""
echo "Обычные файлы:"
ls -l | grep ^-
echo ""
echo "Символьные ссылки:"
ls -l | grep ^l
echo ""
echo "Символьные устройства:"
ls -l | grep ^c
echo ""
echo "Блочные устройства:"
ls -l | grep ^b
