[[ $- != *i* ]] && return

zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit -d ~/.zsh/zcompdump
zstyle ':completion::complete:*' use-cache 1

bindkey -e

for config_file (~/.zsh/lib/*.zsh) source $config_file
for config_file (~/.zsh/configs/*.zsh) source $config_file

source ~/.zsh/bundle/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/.zsh/themes/qqshfox.zsh-theme
