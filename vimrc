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
Bundle 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-syntastic/syntastic'
Bundle 'Valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'

call vundle#end()
filetype plugin indent on

" ----- Plugin config

" ----- Valloric/YouCompleteMe & SirVer/ultisnips 
" See: http://stackoverflow.com/a/22253548
" make YCM compatible with UltiSnips (using supertab)
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" Just 'python' so it finds venv/conda versions
let g:ycm_python_binary_path = 'python'
let g:ycm_collect_identifiers_from_tags_file = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_add_preview_to_completeopt = 0
map <F3> :YcmCompleter GoTo<CR>

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


" ----- Config and customizations
set term=xterm-256color
set guifont=Ubuntu\ Mono\ derivative\ Powerline:10
" set guifont=Ubuntu\ Mono
let g:Powerline_symbols = 'fancy'

" ----- Vim airline
let g:airline_powerline_fonts = 1

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
