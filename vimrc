execute pathogen#infect()
"tabs
set tabstop=4
set shiftwidth=4
set expandtab
syntax on
filetype plugin indent on
set autoindent
set showcmd " show me what i'm typing
set noswapfile " don't use swap file
set ignorecase "search whatever, lower or uppercase
set smartcase  "but not when search pattern contains upper case
set encoding=utf-8

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"don't highlight parenthesis, brackets, keys
let loaded_matchparen=1

"enable folding
set foldmethod=indent
set foldlevel=99
"set spacebar for fold code
nnoremap <space> za



"powerline plugin
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
"let g:Powerline_symbols = 'fancy'
"set laststatus=2
"set encoding=utf-8
