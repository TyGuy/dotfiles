# Path to your oh-my-zsh installation.
export ZSH=/Users/tylerdavis/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Powerline prompt stuff
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# Add a space in the first prompt
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"
# Visual customisation of the second prompt line
local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%} %{%f%}"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git node rails)

# User configuration

# Aliases:
[[ -s "$HOME/.aliasrc" ]] && source "$HOME/.aliasrc"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH="~/.rbenv/shims:$PATH"

# added by Heroku toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"

source $ZSH/oh-my-zsh.sh

# git thing -- depends on oh-my-zsh git thing
gitShove () { git push -u origin $(current_branch) }
alias gshove="gitShove"

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export RBENV_ROOT=/usr/local/var/rbenv
eval "$(rbenv init -)"

# some keys
[[ -s "$HOME/.specifics" ]] && source "$HOME/.specifics"

# NVM stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# android command if android studio installed:
if [[ -s "$HOME/Library/Android/sdk" ]]; then
  export ANDROID_HOME=$HOME/Library/Android/sdk
  export PATH=$ANDROID_HOME/tools:$PATH
  export PATH=$ANDROID_HOME/platform-tools:$PATH
fi

export PATH="./bin:$PATH"
export PATH="$HOME/.bin:$PATH"
export PATH="./scripts/bin:$PATH"

# added by travis gem
[ -f /Users/tylerdavis/.travis/travis.sh ] && source /Users/tylerdavis/.travis/travis.sh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NPM_TOKEN=$(cat $HOME/.npmrc | grep npmjs | tr "=" "\n" | tail -n 1)
eval "$(pyenv init -)"
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
