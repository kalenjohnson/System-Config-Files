# Make sure SSH is running
#eval `ssh-agent -s`
#ssh-add

ssh-add --apple-use-keychain ~/.ssh/id_rsa

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
plugins=(git wd brew git-flow npm macos history-substring-search)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=~/.composer/vendor/bin:$PATH
#export PATH=/mnt/c/HashiCorp/Vagrantbin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:~/.composer/vendor/bin:~/.nvm:~/.rbenv/bin:~/.rbenv/shims:~/.rbenv/completions/rbenv.zsh:~/.local/bin:$PATH

# Kalen's Customizations
alias ...='nocorrect ...'
alias gc='git commit'
alias gs='git status'
alias ga='git add'
alias gp='git push'
alias gclean='git branch --merged | grep -v \* | xargs git branch -D'
alias ll='ls -lah'
alias sail='bash vendor/bin/sail'

#alias git-clean-branches='git branch -vv | grep \': gone]\'|  grep -v "\*" | awk \'{ print $1; }\' | xargs -r git branch -d'

# Allow you to batch rename files
autoload -U zmv
alias mmv='noglob zmv -W'

# export MANPATH="/usr/local/man:$MANPATH"
# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim' 

# Compilation flags 
# export ARCHFLAGS="-arch x86_64"  

# ssh 
export SSH_KEY_PATH="~/.ssh/rsa_id"  

# Set personal aliases, overriding those provided by oh-my-zsh libs, 
# plugins, and themes. Aliases can be placed here, though oh-my-zsh 
# users are encouraged to define aliases within the ZSH_CUSTOM folder. 
# For a full list of active aliases, run `alias`. 
# 
# Example aliases 
# alias zshconfig="mate ~/.zshrc" 
# alias ohmyzsh="mate ~/.oh-my-zsh"

#export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
