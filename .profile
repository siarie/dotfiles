export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"

export TERMINAL=foot
export EDITOR=kak
export VISUAL=kak

export GOPATH=$HOME/.local/share/go
export PATH=$HOME/.local/bin:$GOPATH/bin:$HOME/.npm-global/bin:$PATH

for p in $HOME/lang/**/bin; do
	[ -d $p ] && PATH="$PATH:$p"
done

export GOPROXY=direct
export GOSUMDB=off
export GOTELEMETRY=off
export GOTOOLCHAIN=local

[ -e .shrc.d/alias ] && . .shrc.d/alias
[ -e .shrc.d/$(hostname).profile ] && . .shrc.d/$(hostname).profile

export GTK_THEME=Adwaita:dark

test -r $HOME/.opam/opam-init/init.sh && . $HOME/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
