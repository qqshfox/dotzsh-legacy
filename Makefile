.PHONY: all submodules update install clean

current_path=$(shell pwd)

all: submodules

submodules: git-prompt
	git submodule sync
	git submodule update --init --recursive

git-prompt: submodules
	ln -sf bundle/zsh-git-prompt git-prompt

update: submodules
	wget 'http://zsh.git.sourceforge.net/git/gitweb.cgi?p=zsh/zsh;a=blob_plain;f=Completion/Unix/Command/_git;hb=HEAD' -O lib/git-completion.zsh

install: all install_scm_breeze
	ln -sf ${current_path} ~/.zsh
	ln -sf ~/.zsh/zshrc ~/.zshrc

install_scm_breeze:
	ln -sf ~/.zsh/bundle/scm_breeze ~/.scm_breeze
	ln -sf ~/.zsh/git.scmbrc ~/.git.scmbrc

clean: clean_git_prompt clean_scm_breeze
	rm -rf ~/.zsh
	rm -rf ~/.zshrc

clean_git_prompt:
	rm -f git-prompt

clean_scm_breeze:
	rm -f ~/.git.scmbrc
	rm -f ~/.scm_breeze
