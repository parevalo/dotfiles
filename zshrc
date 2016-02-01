# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/usr3/graduate/parevalo/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Powerline shell
function powerline_precmd() {
    PS1="$(~/powerline-shell.py $? --mode compatible --shell zsh --colorize-hostname 2> /dev/null)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi

# Aliases

alias rm='rm -i'
alias 759='cd /projectnb/landsat/projects/Colombia/images/007059'
alias 859='cd /projectnb/landsat/projects/Colombia/images/008059'
alias 659='cd /projectnb/landsat/projects/Colombia/images/006059'
alias 660='cd /projectnb/landsat/projects/Colombia/images/006060'
alias 760='cd /projectnb/landsat/projects/Colombia/images/007060'
alias 860='cd /projectnb/landsat/projects/Colombia/images/008060'
alias colombia='cd /projectnb/landsat/projects/Colombia'
alias IDS='cd /projectnb/landsat/projects/IDS/ceholden'
alias parevalo='cd /projectnb/landsat/users/parevalo'
alias venv='source /projectnb/landsat/users/parevalo/yatsm5_venv/bin/activate'
alias ycode="cd /projectnb/landsat/users/parevalo/yatsm5_venv/lib/python2.7/site-packages/yatsm"
alias ls='ls -h --color=auto'
alias ll='ls -lh --color=auto'
alias lt='ls -ltr'
alias qsbin='qsub -j y -V -b y'
alias qst='qstat -u parevalo'
alias inter='qsh -V -pe omp 2 -l h_rt=08:00:00'
alias inter2='qsh -V -pe omp 2 -l h_rt=24:00:00'
alias inter3='qsh -V -pe omp 4 -l h_rt=24:00:00'

