# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZSHRC="$HOME/.zshrc"
export ZSH_ALIASES="$HOME/.oh-my-zsh/custom/aliases.zsh"
export ZSH_CUSTOM="$HOME/.oh-my-zsh-custom"

export VIM="/usr/share/nvim"
export VIM_HOME="$HOME/.config/nvim"
export VIMRC="$VIM_HOME/init.lua"
export VIM_KEYMAPS="$VIM_HOME/lua/user/keymaps.lua"
export VIM_PLUGINS="$VIM_HOME/lua/user/plugins.lua"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="crcandy"
ZSH_THEME="jonathan"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git 
    ruby
    zsh-autosuggestions
    colored-man-pages
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

