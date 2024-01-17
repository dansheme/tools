function ssh-tmux() {
    ssh -t $1 "tmux -CC attach || tmux -CC"
}

function vnc-tunnel {
    ssh $1 -N -L 5901:localhost:5901
}

function adb-tunnel {
    ssh $1 -N -R localhost:5038:localhost:5037
}
