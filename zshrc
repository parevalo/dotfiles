# Z shell - 02-15-2016

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
    PS1="$(~/powerline-shell.py $? --mode patched --shell zsh \
		--colorize-hostname --cwd-mode fancy \
		--cwd-max-depth 3  2> /dev/null)"
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

# Modules

geos=(geo.bu.edu scc1.bu.edu scc2.bu.edu)
if [[ ${geos[(r)$host]} == $(hostname) ]]; then
    . /usr/local/Modules/default/init/bash
    source ~/.module
fi

## FUNCTIONS
if [ -f $HOME/.functions ]; then
    source $HOME/.functions
fi



