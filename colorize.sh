screen_name=$(xrandr --current | grep primary | cut -f 1 -d " ")

function randColor() {

r=$(($RANDOM % 9 + 1))
g=$(($RANDOM % 9 + 1))
b=$(($RANDOM % 9 + 1))

xrandr --output $screen_name --gamma $r:$g:$b

}

while true; do randColor; sleep 1; done
