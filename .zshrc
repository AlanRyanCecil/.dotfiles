# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export JAVA_HOME=$(/usr/libexec/java_home)
#export SPARK_HOME="$HOME/pyspark"
#export PYSPARK_SUBMIT_ARGS="--master local[2] pyspark-shell"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

#ZSH_THEME="fletcherm"
ZSH_THEME="fletcherm_alan"
# theme for the server
#ZSH_THEME="dst"

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
plugins=(
git
osx
python
pip
pep8
vi-mode
mysql-macports
)

# User configuration

PATH=$HOME/bin:/usr/local/bin:$PATH
#PATH=${PATH}:"/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/usr/local/git/bin"
#PATH=${PATH}:"/Users/alancecil/local/node/bin"
#PATH=${PATH}:"/Library/Frameworks/Python.framework/Versions/3.4/bin"
PATH=${PATH}:"/usr/local/mysql/bin"
PATH=${PATH}:"/Users/alancecil/anaconda3/bin"
PATH=${PATH}:"/usr/local/Cellar/mongodb/3.2.3/bin"
PATH=${PATH}:"/Users/alancecil/scripts"
PATH=${PATH}:"/Users/alancecil/pyPackages/basic"
export PATH

PYTHONPATH="/Users/alancecil/pyPackages"
export PYTHONPATH
# export MANPATH="/usr/local/man:$MANPATH"


# ********  Aliases  ***************

# teminal
alias c="clear"
alias lk="ls -1a"
alias cl="c && lk"
alias mkdirp="mkdir -p"
alias copy="pbcopy"
alias copypath="pwd|pbcopy"
alias sed="gsed"

# scripts

# git
alias dotgit='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ga='git add'
alias gc='git commit'
alias gpl='git pull'
alias gps='git push'
alias gs='git status'
alias gd='git diff'
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

alias my="mysql --login-path=local"
alias wb="open -a /Applications/MySQLWorkbench.app/Contents/MacOS/MySQLWorkbench"
alias sqp="open -a /Applications/Sequel\ Pro.app/Contents/MacOS/Sequel\ Pro"
alias mdb="mongod --config /usr/local/etc/mongod.conf"

alias tks="tmux kill-session"

# shortcuts
alias ucsdcd="cd ~/TAUCSD/UCSDSAN201904DATA2"
alias pd="source activate PythonData"
alias slide='jupyter nbconvert /Users/alancecil/UCSD_data_science_and_visualization/group_projects/311-San-Diego/notebooks/311_slideshow.ipynb --to slides --post serve'

# python environments
alias psych="conda activate psych && export FLASK_APP=psychTest && export FLASK_DEBUG=1"
alias flaskblog="conda activate flaskblog && export FLASK_APP=flaskblog && export FLASK_DEBUG=1"
# functions

mkdircd(){
    mkdir $1
    cd $1
}

ucsd(){
    cd "/Users/alancecil/TAUCSD/UCSDSAN201904DATA2"
    chrome
    slack
    open "/Users/alancecil/TAUCSD/DataViz-Lesson-Plans/01-Lesson-Plans"
    open "/Users/alancecil/TAUCSD/UCSDSAN201904DATA2/01-Lesson-Plans"
    source activate PythonData
}

# FUNCTION FOLDER
 if [ -f /Users/alancecil/zsh_functions/protmux ]; then
    source /Users/alancecil/zsh_functions/protmux
 fi

# suggested by gem install lunchy
# LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
# if [ -f $LUNCHY_DIR/lunchy-completion.zsh ]; then
# . $LUNCHY_DIR/lunchy-completion.zsh
# fi


source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export EDITOR='vim'

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



source activate PythonData
bindkey -v
