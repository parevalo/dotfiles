# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mobaxterm/.zshrc'

autoload -Uz compinit
compinit

# End of lines added by compinstall
function powerline_precmd() {
    PS1="$(~/powerline-shell.py $? --mode patched --shell zsh 2> /dev/null)"
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

alias login="ssh geo.bu.edu -l parevalo"
alias tun="ssh parevalo@geo.bu.edu -L"

