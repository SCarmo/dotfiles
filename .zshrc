# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.loca./bin:$HOME/bin:/usr/local/bin:$HOME/.gem/ruby/2.6.0/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/shane/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="aphrodite"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vim'
fi

# Use pywal colour scheme
(cat ~/.cache/wal/sequences &)

alias p="sudo pacman"
alias g=git
alias v=nvim
alias cl=clear
alias eterm="nvim ~/.config/termite/config"
alias ei3="nvim ~/.config/i3/config"
alias epb="nvim ~/.config/polybar/config"
alias ezs="nvim ~/.zshrc"
alias ev="nvim ~/.vimrc"
alias sdn="shutdown now"
alias y=yadm
alias ys="yadm status"
alias ya="yadm add"
alias yc="yadm commit -m"
alias sz="source ~/.zshrc"
alias rb="reboot"
