
default:
	@echo "You can choose, which configs you want to populate"
	@echo "(zsh, vim) !!!Your old config will be deleted!!!"

all: zsh vim ssh
	cd ../rc && make -B all

zsh:
	rm -rf ~/.config/zsh ~/.zshrc
	git clone git://github.com/seebi/zshrc.git ~/.config/zsh
	cd ~/.config/zsh && make -B install

vim:
	rm -rf ~/.vimrc ~/.vim
	git clone git://github.com/seebi/vimrc.git ~/.vim
	cd ~/.vim && git config submodule.bundle/semweb.url "git://github.com/seebi/semweb.vim.git"
	cd ~/.vim && git config submodule.bundle/easychair.url "git://github.com/seebi/easychair.vim.git"
	cd ~/.vim && git submodule init
	cd ~/.vim && git submodule update
	ln -s ~/.vim/vimrc ~/.vimrc
	touch ~/.vim/vimrc.private

ssh:
	mkdir -p ~/.ssh/
	rm -rf ~/.ssh/authorized_keys
	echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAA+QCqLroD36lPqezLOD9YANdv0l0t5SizRFOF8b+wtARsD/2D2PuHYi+qucxruPbNO8ys/oeRJqmZCeirHwaSDtg3uFjD/OwcQ8BHEonr/6ECwM3cBAbdRNX6dCjTb6BcnUKZQHkNcl9eTaPVOjQIQhM0WBduOmVwgZLBqBwDbzJqpPBiisiK5H66GUH3NrTvWkFqs32tebSu9GgrQro58Wp4rtYUH221emhz2lXpa26vM3w9Ji9516VlXXSgiCDvkOzTk/Z2S9e0OX/ENDuBpXtiH/tiTEnyxcqVW/Hrl+pWERSI2E11AWxAQHL4GTCRso0vPmLliS9JEQ==" >~/.ssh/authorized_keys


