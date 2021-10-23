# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt extendedglob
bindkey -v
#bindkey "^S" history-incremental-search-forward
#bindkey "^R" history-incremental-search-backward
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/robinsundin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
alias vi=vimx
alias vim=vimx
