#!/bin/bash

function spin() {
    sp='/-\|'
    printf ' '
    while true; do
        printf '\b%.1s' "$sp"
        sp=${sp#?}${sp%???}
        sleep 0.05
    done
}

function progressbar() {
    bar="##################################################"
    barlength=${#bar}
    n=$(($1*barlength/100))
    printf "\r[%-${barlength}s (%d%%)] " "${bar:0:n}" "$1" 
}

spin &
pid=$!

#your task here

for i in `seq 1 100`;
do
    progressbar $i
    sleep 0.1
done

# kill the spinner task
kill $pid > /dev/null 2>&1 \n