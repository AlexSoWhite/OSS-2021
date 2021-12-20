#!/bin/bash
echo "Домашний каталог пользователя"
echo $USER
echo "содержит обычных файлов:"
find ~ -type f -not -name ".*" | wc -l
echo "содержит скрытых файлов:"
find ~ -type f -name ".*" | wc -l
