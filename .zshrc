# Make sure SSH is running
eval `ssh-agent -s`
ssh-add

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="ys"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git wd tmux brew git-flow mysql-macports npm osx history-substring-search  sublime)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/mnt/c/HashiCorp/Vagrant/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:~/.composer/vendor/bin:~/.nvm:~/.rbenv/bin:~/.rbenv/shims:~/.rbenv/completions/rbenv.zsh:~/.local/bin

# Kalen's Customizations
alias ...='nocorrect ...'
alias gc='git commit'
alias gs='git status'
alias ga='git add'
alias gp='git push'
alias gclean='git branch --merged | grep -v \* | xargs git branch -D'
alias ll='ls -lah'
alias vagrant='vagrant.exe'

# No ansible SSH cows
export ANSIBLE_NOCOWS=1

# Allow you to batch rename files
autoload -U zmv
alias mmv='noglob zmv -W'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

