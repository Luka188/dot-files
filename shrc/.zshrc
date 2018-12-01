# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/luka/.oh-my-zsh



# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="daveverwer"

path+=("/home/luka/Programs")
path+=("/opt/gradle-4.6/bin")
export JAVA_HOME="/usr/lib/jvm/jdk-9.0.4"
export PATH
export PATH=$JAVA_HOME/bin:$PATH


xset r rate 200 40
alias fcc='gcc -std=c99 -pedantic -Wall -Wextra -Werror'
alias f++='g++ -std=c++17 -pedantic -Wall -Wextra -Werror -o out'
alias ilock='i3lock -i /home/luka/Pictures/lockScreen/lock-pin.png --indicator -k --ringcolor=03441fff --keyhlcolor=b4ff8cff --timecolor=edfbffff --datecolor=edfbffff --linecolor=00000000 --insidecolor=00000000 --radius 90 --insidevercolor=00000000 --textcolor=d6cdc900 --ringvercolor=094ebcff --ringwrongcolor=db3e23ff --insidewrongcolor=00000000  --timepos=w/2-cw/2:h/2+70 --datesize=30 --datepos=w/2-cw/2:h/2-250'
alias polyrefresh='polybar-msg cmd restart'
alias vps='ssh luka@vps490122.ovh.net -p 8104'
alias restartnet='sudo service network-manager restart'
alias clip='xclip -sel clip'
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
plugins=(git)

source $ZSH/oh-my-zsh.sh

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh



SH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)


ZSH_HIGHLIGHT_STYLES[default]=none
ZSH_HIGHLIGHT_STYLES[unknown-token]=none
#ZSH_HIGHLIGHT_STYLES[alias]=fg=green
#ZSH_HIGHLIGHT_STYLES[builtin]=fg=green
#ZSH_HIGHLIGHT_STYLES[function]=none
#ZSH_HIGHLIGHT_STYLES[command]=none
#ZSH_HIGHLIGHT_STYLES[precommand]=none
#ZSH_HIGHLIGHT_STYLES[commandseparator]=none
#ZSH_HIGHLIGHT_STYLES[hashed-command]=none
ZSH_HIGHLIGHT_STYLES[path]='fg=140'
#ZSH_HIGHLIGHT_STYLES[globbing]=none
#ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=blue
#ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=none
#ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=none
#ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
#ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=yellow
#ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=yellow
#ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=cyan
#ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=cyan
#ZSH_HIGHLIGHT_STYLES[assign]=none



unsetopt share_history
setopt no_share_history
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
