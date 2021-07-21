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

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export PATH="$(yarn global bin):$PATH:$HOME/.config/composer/vendor/bin:$HOME/.luarocks/bin"

export PS1="\[\e[1;34m\u\e[m\] at \[\e[1;31m\W\]\n\[\e[1;32m\]» \[\e[0m\]"
. "$HOME/.cargo/env"


export TERM=xterm-256color
