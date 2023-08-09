export TERMINAL=foot
export EDITOR=kak
export VISUAL=kak

export GOPATH=$HOME/.local/share/go
export PATH=$HOME/.local/bin:$GOPATH/bin:$HOME/.npm-global/bin:$PATH

export GOPROXY=direct
export GOSUMDB=off
export GOTELEMETRY=off
export GOTOOLCHAIN=local

[ -e .shrc.d/alias ] && . .shrc.d/alias
[ -e .shrc.d/$(hostname).profile ] && . .shrc.d/$(hostname).profile

if [ -z $WAYLAND_DISPLAY ] && [ $(tty) = "/dev/tty1" ]; then
	exec river.sh
fi
