# Path to your oh-my-zsh installation.
export ZSH=/Users/joneshf/.oh-my-zsh

# Set name of the theme to load.
# Look in ${ZSH}/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="hyperzsh"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ${ZSH}/plugins/*)
# Custom plugins may be added to ${ZSH}/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  bundler
  capistrano
  chruby
  docker
  docker-compose
  extract
  gem
  git
  mix
  nix
  rails
  sudo
  zeus
  zsh-wakatime
)

# User configuration

export EDITOR=vim

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

path+=~/.bin
path+=~/.local/bin

# git
alias grho='git reset --hard origin/$(git_current_branch)'

# go
path+=~/go/bin

# gpg
if test -f ~/.gnupg/.gpg-agent-info -a -n "$(pgrep gpg-agent)"; then
    source ~/.gnupg/.gpg-agent-info
    export GPG_AGENT_INFO
    GPG_TTY=$(tty)
    export GPG_TTY
else
    eval $(gpg-agent --daemon)
fi

# Ruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
# In order to change the ruby automatically with `chruby`,
# we need to source this script.
source /usr/local/share/chruby/auto.sh

# terraform
alias terraformat='terraform fmt'

# virtualenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
