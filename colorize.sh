#!/bin/sh

screen_name=$(xrandr --current | grep primary | cut -f 1 -d " ")

function randColor() {

r=$(($RANDOM % 9 + 1))
g=$(($RANDOM % 9 + 1))
b=$(($RANDOM % 9 + 1))

xrandr --output $screen_name --gamma 0.$r:0.$g:0.$b

}

function blink_time() {
    sleep_time=$1
    amount=$2
    echo "Change blink $sleep_time x $amount"
    for i in $(seq $amount); do echo $i; randColor; sleep $sleep_time; done;
}

while true; do
    blink_time 1 5;
    blink_time 0.5 10;
    blink_time 0.25 20;
    blink_time 1 10;
    blink_time 0.25 30;
d
