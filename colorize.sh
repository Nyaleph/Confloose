function randColor() {

r=$(($RANDOM % 9 + 1))
g=$(($RANDOM % 9 + 1))
b=$(($RANDOM % 9 + 1))

xrandr --output eDP-1 --gamma $r:$g:$b

}

while true; do randColor; sleep 1; done
