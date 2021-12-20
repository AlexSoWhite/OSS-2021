#!/bin/bash
cat /home/$USER/bash.txt | grep "000000" > /tmp/zeros
cat /home/$USER/bash.txt | grep -v "000000" > /tmp/nozeros
head -10 /tmp/zeros
tail -10 /tmp/zeros
head -10 /tmp/nozeros
tail -10 /tmp/nozeros
