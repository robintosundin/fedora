# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt extendedglob
# Vi mode navigation
bindkey -v
# Yank to sys clipboard, requires xclip package

function vi-yank-xclip {
	zle vi-yank
	echo "$CUTBUFFER" | xclip -sel clip
}

zle -N vi-yank-xclip
bindkey -M vicmd 'y' vi-yank-xclip

# The following lines were added by compinstall
zstyle :compinstall filename '/home/robinsundin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Aliases
alias vi=/usr/bin/vimx
alias vim=/usr/bin/vimx
