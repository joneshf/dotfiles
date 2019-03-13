# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
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

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(archlinux bundler cabal colored-man extract ghc git heroku nix npm nyan rails systemd vagrant web-search wd zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/vendor_perl:/usr/bin/core_perl"
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# My own, personal bin
path+=/home/joneshf/bin

# aura
path+=/home/joneshf/programming/aura/.cabal-sandbox/bin

# haskell
# path+=/home/joneshf/.cabal/bin

# sml
SMLNJ_HOME="/usr/lib/smlnj"
path+=/usr/lib/smlnj/bin

export EDITOR=/usr/bin/vim

# suggest commands if they might exist.
source /usr/share/doc/pkgfile/command-not-found.zsh

# czt
path+=~/school/ucd/ecs160/czt/czt-ide

# android
path+=/opt/android-sdk/tools
path+=/opt/android-sdk/platform-tools

# SlamData
# installbuilder
path+=~/installbuilder-9.0.1/bin

# ruby
path+=~/.gem/ruby/2.1.0/bin
path+=~/.gem/ruby/2.2.0/bin

# added by travis gem
[ -f /home/joneshf/.travis/travis.sh ] && source /home/joneshf/.travis/travis.sh

# kitten
path+=/home/joneshf/programming/evincarofautumn/kitten/dist/build/kitten

# ghcjs
path+=~/programming/ghcjs/.cabal-sandbox/bin
alias youch=touch

# ghc-android
export GHCHOME=/home/joneshf/.ghc
path+=~/.ghc/android-14/arm-linux-androideabi-4.7/arm-linux-androideabi/bin

# exercism
export EXERCISM_CONFIG_FILE=~/.config/exercism/exercism.json

# go
export GOPATH=~/programming/go/stuff
path+=$GOPATH/bin

# mozart
path+=~/programming/mozart/mozart/bin

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# npm path
path+=~/.local/bin
alias chrome=google-chrome-stable
export NODE_PATH=~/.local/lib/node_modules

# the fuck
eval $(thefuck --alias)

# git aliases
alias grho='git reset --hard origin/$(git_current_branch)'

# nix
source ~/.nix-profile/etc/profile.d/nix.sh

export EDITOR=nvim

# gpg
export GPG_TTY=$(tty)

# direnv
eval "$(direnv hook zsh)"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/joneshf/programming/joneshf/purescript-serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/joneshf/programming/joneshf/purescript-serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/joneshf/programming/joneshf/purescript-serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /home/joneshf/programming/joneshf/purescript-serverless/node_modules/tabtab/.completions/sls.zsh
