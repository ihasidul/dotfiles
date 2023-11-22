# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
PROMPT='%T %B%~%b $ '

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Enable colors and change prompt:

#Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
#makes vim defult text editor
export EDITOR=vim
#sets the environment variable for .net5
export DOTNET_ROOT=/snap/dotnet-sdk/current
alias nuget="mono /usr/local/bin/nuget.exe"

alias python='python3'

#this is to set path for laravel
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="gruvbox"
SOLARIZED_THEME="dark"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"
# This is to stop the error sound
unsetopt BEEP
# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
#"dd.mm.yyyy"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

#source 
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export BAT_THEME="zenburn"
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#Plugins
plugins=(git 
        zsh-autosuggestions 
        zsh-syntax-highlighting 
        copypath
        copyfile)

source $ZSH/oh-my-zsh.sh
# Example aliases
# alias zshconfig="mate ~/.zshrc"
#alias ohmyzsh="mate ~/.oh-my-zsh"
#

if [ -f ~/.zsh_aliases ]; then
        . ~/.zsh_aliases
fi

alias ls='exa -lhgi'
alias ll='ls'
alias la='ls -A'
alias l='ls'
alias sl='ls --color=auto'
alias cat='batcat'
alias c='clear'             # c:            Clear terminal display
alias pcra='pre-commit run --all-files'
alias g='git'
alias gs='git status'       # gs:       Show git status
alias ga='git add .'
alias gcm='git commit -m'
alias gc='git checkout'
alias gb='git branch'
alias glg='git log --all --decorate --graph'
alias gd='git diff'
alias f='find . | grep'
alias pyrs='python manage.py runserver'
alias dps='docker ps -a'
alias di='docker images'

alias nvim="~/nvim.appimage"
alias chkb="xev |egrep (KeyPress|KeyRelease|XLookupString)"



# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# for GO 
export PATH=$PATH:/usr/local/go/bin

source  $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath+=${ZDOTDIR:-~}/.zsh_functions

# vim mode
# bindkye -v
# export KEYTIMEOUT=1
#
#this is for ibus and bangla keyboard
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
. "$HOME/.cargo/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# To fix autocomplete character issue
# https://stackoverflow.com/questions/19305291/remnant-characters-when-tab-completing-with-zsh
export LC_ALL=en_US.UTF-8

# bun completions
[ -s "/home/ami/.bun/_bun" ] && source "/home/ami/.bun/_bun"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
[ -s "/home/mt/.bun/_bun" ] && source "/home/mt/.bun/_bun"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# This is for removing Ctrl+S input stoping issue 
stty -ixon

# For composer stuff
export PATH="$HOME/.composer/vendor/bin:$PATH"

# This one is for exercism
[[ ":$PATH:" == *":$HOME/bin:"* || ":$PATH:" == *":~/bin:"* ]]


export PATH=~/bin:$PATH
source $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/usr/local/opt/postgresql@15/bin:$PATH"

# bun completions
[ -s "/home/mevrikdcx/.bun/_bun" ] && source "/home/mevrikdcx/.bun/_bun"

# for zoxcide aka z
eval "$(zoxide init zsh)"

# This is for pywal https://github.com/dylanaraps/pywal
export PATH="${PATH}:${HOME}/.local/bin/"

