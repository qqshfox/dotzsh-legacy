[[ $- != *i* ]] && return

zstyle :compinstall filename '~/.zshrc'

fpath=(~/.zsh/bundle/zsh-completions/src $fpath)
autoload -Uz compinit
compinit -d ~/.zsh/zcompdump
zstyle ':completion::complete:*' use-cache 1

bindkey -e

for config_file (~/.zsh/configs/*.zsh) source $config_file
for config_file (~/.zsh/lib/*.zsh) source $config_file

source ~/.zsh/bundle/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/bundle/zsh-git-prompt/zshrc.sh
source ~/.zsh/bundle/git-flow-completion/git-flow-completion.zsh
source ~/.zsh/bundle/scm_breeze/scm_breeze.sh

source ~/.zsh/themes/qqshfox.zsh-theme
export LANG=zh_CN.UTF-8
