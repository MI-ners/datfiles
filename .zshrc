# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Uncomment the following line to enable command auto-correction.

COMPLETION_WAITING_DOTS="true"
plugins=(git archlinux pip python zsh-autosuggestions zsh-syntax-highlighting)

#dumps the .zsh dumps elsewhere
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi


function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

export EDITOR="nvim"

alias updall='sudo pacman -Syu && yay -Sua'

eval "$(starship init zsh)"

export TERM=xterm-kitty


# opencode
export PATH=/home/miners/.opencode/bin:$PATH

alias dev='tmux new-session -d -s dev "nvim ." \; new-window "opencode" \; new-window \; select-window -t dev:1 \; attach'

