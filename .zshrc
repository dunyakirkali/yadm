# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.mix/escripts:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/dunyakirkali/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="cactus"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
  wd
  ansible
  brew
  bundler
  chucknorris
  docker
  heroku
  iterm2
  osx
  rails
  rvm
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
export VISUAL=vim
export EDITOR=$VISUAL

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Homebrew
export HOMEBREW_NO_ANALYTICS=1

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

alias px-on='export http_proxy=http://nl-userproxy-access.net.abnamro.com:8080 https_proxy=http://nl-userproxy-access.net.abnamro.com:8080 HTTP_PROXY=http://nl-userproxy-access.net.abnamro.com:8080 HTTPS_PROXY=http://nl-userproxy-access.net.abnamro.com:8080'
alias px-off='unset HTTP_PROXY HTTPS_PROXY http_proxy https_proxy'
alias ls=exa
# alias find=fd
# alias grep=rg
#alias curl=http
alias sed=sd
#alias time=hyperfine
alias day="brew update && upgrade_oh_my_zsh"
alias vim=nvim

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin:$HOME/Projects/tools/bin:/Users/dunyakirkali/Downloads/exercism-mac-64bit"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH="$PATH:$HOME/go/bin"

. ~/.fastlane/completions/completion.sh
export PATH="/usr/local/sbin:$PATH"

# OneSky
export ONESKY_API_KEY="ZE92t9FPVxtoP463kN2B3MYD66eNKu7A"
export ONESKY_API_SECRET="ooaO4ze3IdNsCLNTOiJW4hRvunVvki6z"

. $(brew --prefix asdf)/asdf.sh

