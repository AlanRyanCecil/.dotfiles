# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

ZSH_THEME="fletcherm"
# theme for the server
ZSH_THEME="dst"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
#HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git)

# User configuration

PATH=$HOME/bin:/usr/local/bin:$PATH
#PATH=${PATH}:"/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/usr/local/git/bin"
#PATH=${PATH}:"/Users/alancecil/local/node/bin"
#PATH=${PATH}:"/Library/Frameworks/Python.framework/Versions/3.4/bin"
PATH=${PATH}:"/usr/local/Cellar/mongodb/3.2.3/bin"
PATH=${PATH}:"/Users/alancecil/scripts/ngspin"
PATH=${PATH}:"/Users/alancecil/pyPackages/basic"
PATH=${PATH}:"/Users/alancecil/anaconda3/bin"
export PATH

PYTHONPATH="/Users/alancecil/pyPackages"
export PYTHONPATH
# export MANPATH="/usr/local/man:$MANPATH"


# ********  Aliases  ***************

# teminal
alias c="clear"
alias lk="ls -1a"
alias mkdirp="mkdir -p"
alias copypath="pwd|pbcopy"

# git
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias glog='git log --graph --all --decorate --oneline'

alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias py3='python3'
alias subset="cd && cd /Users/alancecil/Library/Application\ Support/Sublime\ Text\ 3"
alias arc="cd && cd websites/alanryancecil.com"
alias tut="cd && cd programming/exercises && lk"
alias three="cd programming/exercises/threeJs"
alias linker="source ~/Virtualenvs/linker/bin/activate && cd linker"

alias shit="ssh alanryancecil@aluminum"

alias chrome="open -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias slack="open -a /Applications/Slack.app/Contents/MacOS/Slack"
alias mdb="mongod --config /usr/local/etc/mongod.conf"

alias tks="tmux kill-session"

# shortcuts
alias ucsdcd="cd ~/UCSD_data_science_and_visualization"

# functions

mkdircd(){
    mkdir $1
    cd $1
}

ucsd(){
    ucsdcd
    chrome
    slack
    sublime .
    open .
    source activate PythonData
}

# FUNCTION FOLDER
 if [ -f /Users/alancecil/zsh_functions/protmux ]; then
    source /Users/alancecil/zsh_functions/protmux
 fi


source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# pip3 should only run if there is a virtualenv currently activated
 export PIP3_REQUIRE_VIRTUALENV=true

