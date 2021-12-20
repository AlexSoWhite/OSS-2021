#!/bin/bash
find / -type f -maxdepth 1 -name "*.txt" 2>/dev/null | wc -l
