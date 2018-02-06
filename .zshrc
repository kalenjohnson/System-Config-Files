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
export PATH=/mnt/c/HashiCorp/Vagrantbin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:~/.composer/vendor/bin:~/.nvm:~/.rbenv/bin:~/.rbenv/shims:~/.rbenv/completions/rbenv.zsh:~/.local/bin:$PATH
export PATH=/mnt/c/Program\ Files/Oracle/VirtualBox:/mnt/c/Windows/system32:$PATH
export PATH=/mnt/c/Program\ Files/Docker\ Toolbox:$PATH

# Vagrant WSL fix
# export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"

# DOCKER
export DOCKER_HOST=localhost:2375

# Kalen's Customizations
alias ...='nocorrect ...'
alias gc='git commit'
alias gs='git status'
alias ga='git add'
alias gp='git push'
alias gclean='git branch --merged | grep -v \* | xargs git branch -D'
alias ll='ls -lah'
alias vagrant='vagrant.exe'

alias vssh='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no vagrant@127.0.0.1 -i ./.vagrant/machines/default/virtualbox/private_key -p'

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

# Start the docker machine
export VBOX_MSI_INSTALL_PATH='/c/Program Files/Oracle/VirtualBox/'
pushd '/c/Program Files/Docker Toolbox/' > /dev/null
./start.sh exit

# Get env variables from docker-machine, convert paths, ignore comments, and strip double quotes.
$(./docker-machine.exe env --shell bash | sed 's/C:/\/c/' | sed 's/\\/\//g' | sed 's:#.*$::g' | sed 's/"//g' )
popd > /dev/null

# Change /mnt/c/ to /c/ in current working directory path
cd $(pwd | sed 's/\/mnt\/c\//\/c\//')
