PWD="`pwd`"

default:
	@echo "You can choose which config you want to populate"

all: gitconfig zsh

gitconfig:
	rm -f ~/.gitconfig
	ln -s ${PWD}/gitconfig ~/.gitconfig

zsh:
	rm ~/.config/zsh/private.final.zsh
	ln -s ${PWD}/private.final.zsh ~/.config/zsh/private.final.zsh

