#!/bin/bash

function spin() {
    sp = '/-\|'
    printf
    while true; do
        printf '\b%.1s' "$sp"
        sp = ${sp#?}${sp%???}
        sleep 0.05
}

function progressbar() {
    bar = "##################################################"
    barlength = ${#bar}
    n = $(($1*barlength/100))
    printf "\r[%-${barlength}s (%d%%)] " "${bar:0:n}" "$1"
}
