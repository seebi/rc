
export DEBFULLNAME="Sebastian Tramp"
export DEBEMAIL="mail@sebastian.tramp.name"

# start a screen/tmux session if not already in it
if [[ "$TERM" =~ "^screen.*$" ]]; then
    # I'm already inside of a screen
else
    byobu && clear && exit
fi
