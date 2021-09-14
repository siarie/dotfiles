# .bash_profile

# User specific environment and startup programs
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/.bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/.bin:$PATH"
fi

# npm and yarn global directory
PATH="$PATH:$(yarn global bin)"

# composer gloabal directory
if [[ -d "$HOME/.config/composer/vendor/bin" ]]
then
    PATH="$PATH:$HOME/.config/composer/vendor/bin"
fi


# golang installation path
if [[ -d "/usr/local/go/bin" ]]
then
    export GOPATH="$HOME/.golang"
    PATH="$PATH:/usr/local/go/bin:$GOPATH/bin"
fi

export PATH

# Make sure `ls` collates dotfiles first
export LC_COLLATE="C"

# Firefox Wayland
if [ ! -z ${WAYLAND_DISPLAY} ];
then
	export MOZ_ENABLE_WAYLAND=1
	export MOZ_DBUS_REMOTE=1
fi

export GPG_TTY=$(tty)

# Load .bashrc
[ -f ~/.bashrc ] && . ~/.bashrc
. "$HOME/.cargo/env"
