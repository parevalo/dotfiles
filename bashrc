#
# .bashrc
# 01/28/2016
#
# Source global definitions

export LANG=en_US.UTF-8

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
 
umask 022

# disable coredumps by default
ulimit -c 0


# Use powerline-shell, disabled because it is slow!
#function _update_ps1() {
#    PS1="$(~/powerline-shell.py $? --mode compatible --shell bash --cwd-only --colorize-hostname 2> /dev/null)"
#}
#
#if [ "$TERM" != "linux" ]; then
#    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi

# Aliases

alias rm='rm -i'
alias 759='cd /projectnb/landsat/projects/Colombia/images/007059'
alias 859='cd /projectnb/landsat/projects/Colombia/images/008059'
alias 758='cd /projectnb/landsat/projects/Colombia/images/007058'
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

# Modules, fix with proper sourcing of .module

module load pgi
module load python/2.7.5_nopath
module load qgis/2.6.1
module load gdal/1.11.1
module load vim
#module load llmv/3.6 Needed for numba, test!

## FUNCTIONS

function scn(){
	path=00$1
	row=0$2
	
	cd /projectnb/landsat/projects/Colombia/images/$path$row
}


function jul () { 
	date -d "$1-01-01 +$2 days -1 day" "+%Y%m%d";
 }
