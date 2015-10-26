# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Setup terminal, and turn on colors 颜色配置
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew osx svn python)

source $ZSH/oh-my-zsh.sh

# 加载提示符系统
autoload -U compinit promptinit
compinit
promptinit

# Customize to your needs...
#export PATH=/Users/dengjoe/erlang/kerl/r15b03/bin:/usr/local/Cellar/subversion/1.7.9/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:$PATH

export PATH=/usr/local/share/npm/bin:/usr/local/Cellar/subversion/1.7.9/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$PATH



alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias mvim=/usr/local/bin/mvim
alias vi="mvim"
alias vim="mvim"
alias py="python"
alias mv='mv -i'
alias rm='rm -i'
alias free="python /Users/dengjoe/python/free.py"

# -------------------------------------------------------------------
# Git
# -------------------------------------------------------------------
alias gam="git commit -a -m"
alias gc= "git checkout"
alias gs="git status"
alias gp='git push'
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit "
alias gb='git branch'
alias gd='git diff' #显示缓存变化
alias ghard='git reset --hard'


[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scriptingi

# 中文支持
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
export LC_CTYPE=zh_CN.UTF-8

export GOROOT=/usr/local/Cellar/go/1.3/libexec
export GOPATH=/Users/dengjoe/go/heroku

