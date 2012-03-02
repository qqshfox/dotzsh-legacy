.PHONY: all submodules install clean

all: submodules

submodules:
	git submodule update --init --recursive

current_path=$(shell pwd)
install: all
	ln -sf ${current_path} ~/.zsh
	ln -sf ~/.zsh/zshrc ~/.zshrc

clean:
	rm -rf ~/.zsh
	rm -rf ~/.zshrc
