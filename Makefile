.PHONY: all submodules install clean

all: submodules

submodules:
	git submodule update --init --recursive

git-prompt:
	ln -sf bundle/zsh-git-prompt git-prompt

current_path=$(shell pwd)
install: all
	ln -sf ${current_path} ~/.zsh
	ln -sf ~/.zsh/zshrc ~/.zshrc

clean:
	rm -rf ~/.zsh
	rm -rf ~/.zshrc
