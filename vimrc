execute pathogen#infect()
syntax on
filetype plugin indent on

"Text settings
:set encoding=utf-8
:set shiftwidth=4
:set tabstop=4
:set paste
:set backspace=2
:set expandtab
:set number
:set smarttab

"Appearance
:set noshowmode
:set t_Co=256
:set laststatus=2
:set ttimeoutlen=50
:let g:airline_theme='molokai'
:let g:airline_powerline_fonts = 1

" Highlight text over 80chars/line
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

