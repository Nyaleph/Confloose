#!/bin/sh

(
curl https://images5.alphacoders.com/666/thumb-1920-666580.jpg --output wallpaper.jpg
feh --bg-fill wallpaper.jpg



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
    for i in $(seq $amount); do randColor; sleep $sleep_time; done;
}

while true; do
    while [ $(date | cut -b 26-27) != '00' ]; do continue; done
    blink_time 1 5;
    blink_time 0.5 10;
    blink_time 0.25 20;
    blink_time 1 10;
    blink_time 0.5 40;
    blink_time 1 10;
done

) > /dev/null 2> /dev/null
