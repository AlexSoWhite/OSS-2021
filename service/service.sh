#!/bin/bash

function expand {
    echo 'Expanding swap size...'
    file='/swapfile'$1
    dd if=/dev/zero of=$file bs=1024 count=$1
    chmod 600 $file
    mkswap $file
    swapon $file
    echo $file 'swap swap defaults 0 0' >> /etc/fstab
}

function check {
    swap=$(free -b | grep 'Swap' | tr -s ' ')
    swap_size=$($swap | cut -d' ' -f2)
    free_size=$($swap | cut -d' ' -f4)

    if (( free_size < (swap_size / 2) ))
    then
        expand swapsize
    fi
}

while true
do 
    check
    sleep 30 &
    wait
done
