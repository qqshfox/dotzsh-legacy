.PHONY: all submodules update install clean

current_path=$(shell pwd)

all: submodules

submodules:
	git submodule sync
	git submodule update --init --recursive

update: submodules
	wget 'http://sourceforge.net/p/zsh/code/ci/master/tree/Completion/Unix/Command/_git?format=raw' -O lib/git-completion.zsh

install: all install_scm_breeze
	ln -sf ${current_path} ~/.zsh
	ln -sf ~/.zsh/zshrc ~/.zshrc

install_scm_breeze:
	ln -sf ~/.zsh/bundle/scm_breeze ~/.scm_breeze
	ln -sf ~/.zsh/git.scmbrc ~/.git.scmbrc

clean: clean_scm_breeze
	rm -rf ~/.zsh
	rm -rf ~/.zshrc

clean_scm_breeze:
	rm -f ~/.git.scmbrc
	rm -f ~/.scm_breeze
