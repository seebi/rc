
default:
	@echo "You can choose, which configs you want to populate"
	@echo "(zsh, vim) !!!Your old config will be deleted!!!"

all: zsh vim ssh
	cd ../rc && make -B all

zsh:
	rm -rf ~/.config/zsh ~/.zshrc
	git clone https://github.com/seebi/zshrc.git ~/.config/zsh
	cd ~/.config/zsh && make -B install

vim:
	rm -rf ~/.vimrc ~/.vim
	git clone https://github.com/seebi/vimrc.git ~/.vim
	cd ~/.vim && git config submodule.bundle/semweb.url "https://github.com/seebi/semweb.vim.git"
	cd ~/.vim && git config submodule.bundle/easychair.url "https://github.com/seebi/semweb.vim.git"
	cd ~/.vim && git submodule init
	cd ~/.vim && git submodule update
	ln -s ~/.vim/vimrc ~/.vimrc
	touch ~/.vim/vimrc.private

ssh:
	mkdir -p ~/.ssh/
	echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAsp78I8VZxdTdfFqhttwetGJbYmKl1Wm63QH4rkT6ku" >>~/.ssh/authorized_keys


