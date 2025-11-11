# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="nanotech"
# Uncomment the following line to enable command auto-correction.

COMPLETION_WAITING_DOTS="true"
plugins=(git archlinux pip python zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

export TERM=xterm-256color

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

export EDITOR="nvim"

alias updall='sudo pacman -Syu && yay -Sua'

#maybe
eval "$(starship init zsh)"

# Add a newline between commands
# https://github.com/starship/starship/issues/560
precmd() { precmd() { echo "" } }
alias clear="precmd() { precmd() { echo } } && clear"
