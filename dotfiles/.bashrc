# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Rebind xoff to ctrl-p to free up regular i-search with ctrl-s
stty stop '^p'

## History (saved between bash sessions)
shopt -s histreedit # re-edit history substitution line if it failed
shopt -s histverify # edit a recalled history line before executing
HISTSIZE=100000
HISTFILESIZE=$HISTSIZE
HISTCONTROL=ignorespace:ignoredups

_bash_history_sync(){
	builtin history -a
	HISTFILESIZE=$HISTSIZE
	builtin history -c
	builtin history -r
}

history(){
	_bash_history_sync
	builtin history "$@"
}
PROMPT_COMMAND=_bash_history_sync

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# Aliases
alias vi=/usr/bin/vimx
alias vim=/usr/bin/vimx
