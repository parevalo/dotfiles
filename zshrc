# Path to your oh-my-zsh installation.
  export ZSH=/usr3/graduate/parevalo/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Make home and end keys work properly!
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line

# Do not share history
setopt nosharehistory

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
DISABLE_AUTO_TITLE="true"

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

# User configuration

  export PATH="/usr3/graduate/parevalo/miniconda2/bin:/share/pkg/vim/7.4/install/bin:/usr/local/apps/pgi-13.5/bin:/usr/java/default/jre/bin:/usr/java/default/bin:/usr/lib64/qt-3.3/bin:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr3/graduate/parevalo/bin:/usr3/graduate/parevalo/.local/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

# Aliases
alias rm='rm -i'
alias colombia='cd /projectnb/landsat/projects/Colombia'
alias IDS='cd /projectnb/landsat/projects/IDS/ceholden'
alias parevalo='cd /projectnb/landsat/users/parevalo'
alias pipvenv='source /projectnb/landsat/users/parevalo/yatsm5_venv/bin/activate'
alias condavenv="source activate conda_env"
alias ycode="cd /projectnb/landsat/users/parevalo/yatsm5_venv/lib/python2.7/site-packages/yatsm"
alias qsbin='qsub -j y -V -b y'
alias qst='qstat -u parevalo'
alias inter='qsh -V -pe omp 2 -l h_rt=08:00:00'
alias inter2='qsh -V -pe omp 2 -l h_rt=24:00:00'
alias inter3='qsh -V -pe omp 4 -l h_rt=24:00:00'


# Modules
source ~/.module

# Functions
if [ -f $HOME/.functions ]; then
    source $HOME/.functions
fi

# For future powerline use
#. /usr3/graduate/parevalo/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
