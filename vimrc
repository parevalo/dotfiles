" Settings to make powerline work

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

set term=xterm-256color
set guifont=Ubuntu\ Mono\ derivative\ Powerline:10
" set guifont=Ubuntu\ Mono
let g:Powerline_symbols = 'fancy'

"Syntax settings
syntax on
filetype indent plugin on

"Text settings
:set encoding=utf-8
:set shiftwidth=4
:set tabstop=4
:set paste
:set backspace=2
:set expandtab
:set cc=80
:set number

"Appearance
:set noshowmode
:set t_Co=256
:set laststatus=2
:set ttimeoutlen=50
