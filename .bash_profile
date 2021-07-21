# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

export MOZ_ENABLE_WAYLAND=1
export MOZ_DBUS_REMOTE=1

# If running from tty1 start sway
#if [ "$(tty)" = "/dev/tty1" ]; then
#	exec sway
#fi

. "$HOME/.cargo/env"


export GUIX_LOCPATH="$HOME/.guix-profile/lib/locale"

GUIX_PROFILE="/home/siarie/.guix-profile"
. "$GUIX_PROFILE/etc/profile"
