# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="kurojishi"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github history-substring-search pip python extract gnu-utils perl svn mercurial rsync terminator virtualenv vundle wakeonlan)

source $ZSH/oh-my-zsh.sh

# Disable auto update
export DISABLE_AUTO_UPDATE="true"

# Customize to your needs...
zstyle :compinstall filename '~/.zshrc'
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*:*:vi(m|):*' ignored-patterns '*.o' 
zstyle ':completion:*:*:git:*' ignored-patterns '*.o' 
autoload -Uz compinit

# caching
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# remove slash if argument is a directory
zstyle ':completion:*' squeeze-slashes true

function calc
{
    echo "$*"|bc -l;
}

set COMPLETE_ALIASES
. ~/.zsh_aliases

export PATH=/root/scripts:$PATH
export TERM=xterm-256color
export MANPAGER="/usr/bin/most -s"
export MOZ_DISABLE_PANGO=1
