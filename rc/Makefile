PWD="`pwd`"

default:
	@echo "You can choose which config you want to populate"

all: gitconfig zsh

gitconfig:
	rm -f ~/.gitconfig
	ln -s ${PWD}/gitconfig ~/.gitconfig

zsh:
	rm -f ~/.config/zsh/private.final.zsh
	ln -s ${PWD}/private.final.zsh ~/.config/zsh/private.final.zsh

tmux:
	rm -rf ~/.tmux.conf
	ln -s ${PWD}/tmux.conf ~/.tmux.conf
