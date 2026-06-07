export PS1="\w \$ "

export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"
if [ ! -e "$SSH_AUTH_SOCK" ]
then
    ssh-agent -a "$SSH_AUTH_SOCK" > /dev/null
fi

PATH="$HOME/.asdf/shims:$HOME/.local/bin:$PATH"

. $HOME/.sh.d/alias

export XDG_DATA_DIRS="$HOME/.local/share:$XDG_DATA_DIRS"
