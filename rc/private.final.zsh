
export DEBFULLNAME="Sebastian Tramp"
export DEBEMAIL="tramp@informatik.uni-leipzig.de"

# start a screen/tmux session if not already in it
if [[ "$TERM" =~ "^screen.*$" ]]; then
    # I'm already inside of a screen
else
    byobu && clear && exit
fi
