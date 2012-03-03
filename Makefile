.PHONY: all submodules update install clean

all: submodules

submodules:
	git submodule sync
	git submodule update --init --recursive

git-prompt: submodules
	ln -sf bundle/zsh-git-prompt git-prompt

update: submodules

current_path=$(shell pwd)
install: all
	ln -sf ${current_path} ~/.zsh
	ln -sf ~/.zsh/zshrc ~/.zshrc

clean:
	rm -rf ~/.zsh
	rm -rf ~/.zshrc
