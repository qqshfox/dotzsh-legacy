[[ $- != *i* ]] && return

zstyle :compinstall filename '~/.zshrc'

fpath=(~/.zsh/bundle/zsh-completions/src $fpath)
autoload -Uz compinit
compinit -d ~/.zsh/zcompdump
zstyle ':completion::complete:*' use-cache 1

bindkey -e

export LANG=zh_CN.UTF-8

for config_file (
  ~/.zsh/configs/*.zsh
  ~/.zsh/lib/*.zsh
  ~/.zsh/bundle/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  ~/.zsh/bundle/zsh-git-prompt/zshrc.sh
  ~/.zsh/bundle/scm_breeze/scm_breeze.sh
  ~/.zsh/themes/qqshfox.zsh-theme
); do
  #start=$(gdate +%s.%N)
  #echo '>>>>>>>>>>'
  #echo $config_file
  source $config_file
  #end=$(gdate +%s.%N)
  #diff=$(( ($end-$start)*1000 ))
  #echo $diff
  #echo '<<<<<<<<<<'
done
