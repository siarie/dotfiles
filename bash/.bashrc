# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# beautify Bash Prompt
BLUE="\033[1;34m"
GREEN="\033[1;32m"
RED="\033[1;31m"
SC="\033[0m"
export PS1="\[${BLUE}\u${SC}\] at \[${RED}\W\] \n\[${GREEN}\]» \[${SC}\]"

unset BLUE
unset GREEN
unset RED
unset SC

# alias
alias foot="footclient"
alias tree="tree --dirsfirst"
alias ll="ls -hl"
