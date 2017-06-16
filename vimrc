set nocompatible
filetype off

" ----- Vundle
" Bootstrap
if !filereadable($HOME . '/.vim/bundle/vundle/.git/config') && confirm("Clone Vundle?","Y\nn") == 1
    exec '!git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/vundle/'
endif

set rtp+=~/.vim/bundle/vundle
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" ----- IDE
"Bundle 'scrooloose/nerdtree'
"Plugin 'vim-syntastic/syntastic'
"Bundle 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

"----- Powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup


" ----- Config and customizations
set term=xterm-256color
set guifont=Ubuntu\ Mono\ derivative\ Powerline:10
" set guifont=Ubuntu\ Mono
let g:Powerline_symbols = 'fancy'

"Syntax settings
syntax on
"filetype plugin indent on
" Highlight text over 80chars/line
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"Text settings
:set encoding=utf-8
:set shiftwidth=4
:set tabstop=4
:set paste
:set backspace=2
:set expandtab
:set number

"Appearance
:set noshowmode
:set t_Co=256
:set laststatus=2
:set ttimeoutlen=50
