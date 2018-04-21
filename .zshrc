# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/rasl/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
#ZSH_THEME="amuse"
#ZSH_THEME="geoffgarside"
#ZSH_THEME=hyperzsh
#ZSH_THEME="robbyrussell"
#ZSH_THEME="random"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git textmate ruby bgnotify zsh-256color zsh-autosuggestions gitfast zsh-syntax-highlighting history-substring-search vi-mode sublime autojump )
source $ZSH/oh-my-zsh.sh

alias 'today=calendar -A 0 -f /usr/share/calendar/calendar.mark | sort'
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
eval `dircolors ~/.solarized/dircolors.ansi-dark`
source /opt/ros/kinetic/setup.zsh
source ~/.oh-my-zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=3"
export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
export CFLAGS=-I/path/to/cudnn/include
export LDFLAGS=-L/path/to/cudnn/lib
export LD_LIBRARY_PATH=/path/to/cudnn/lib:$LD_LIBRARY_PATH
export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/home/rasl/sandbox/rogue_sandbox/wet/src/ORB_SLAM2
export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/home/rasl/sandbox/rogue_sandbox/wet/src/ORB_SLAM2/Examples/ROS
source ~/.dotfiles/lib/zsh-autoenv/autoenv.zsh
bindkey -v
alias peal="cd /media/rasl/data/sandbox/peal_sandbox/wet/src/ && source /media/rasl/data/sandbox/peal_sandbox/workon"
alias lmg="cd /media/rasl/data/sandbox/multirotor_sandbox/dev/src/local_map_generator/ && source /media/rasl/data/sandbox/multirotor_sandbox/workon"

function ssh_subl() {
    if [ "$1" != "" ]
    then
        ssh -X -R 52698:localhost:52698 $1@$2
    fi
}
function remote_subl () {
    if [ "$1" != "" ]
    then
        rsub $1
    fi
}
function keymaps() {
    setxkbmap -option ctrl:nocaps
    xmodmap -e "keycode 135=Escape"
}
keymaps
function sandbox() {
    if [ "$1" != "" ]
    then
        cd /media/rasl/data/sandbox/$1_sandbox
        source workon
    fi
}

# remapping . to be source
function .() {
if [ "$1" != "" ]
then
    source $1
fi
}

TRAPWINCH() {
      zle && { zle reset-prompt; zle -R }
  }
alias mytegra="ssh -X -Y nvidia@192.168.10.222"
