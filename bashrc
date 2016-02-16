alias login="ssh geo.bu.edu -l parevalo"
alias tun="ssh parevalo@geo.bu.edu -L"

# Powerline, disabled bc is very slow
#function _update_ps1() {
#    PS1="$(~/powerline-shell.py --mode flat --shell bash $? 2> /dev/null)"
#}
#
#if [ "$TERM" != "linux" ]; then
#    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi
