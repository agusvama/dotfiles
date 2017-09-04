execute pathogen#infect()

"tabs
set tabstop=2
set shiftwidth=2
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
"let loaded_matchparen=1

"use esc for clean highlighted search
nnoremap <silent> <leader>c :noh<CR> 

"enable folding
set foldmethod=indent
set foldlevel=99
"set spacebar for fold code
nnoremap <backspace> za

"color
colo moonfly

"argwrap
nnoremap <silent> <leader>a :ArgWrap<CR>

"set leader + , for expand html with emmet
let g:user_emmet_leader_key='<leader>'

"netrw (vim native file explorer)
"style to display files
let g:netrw_liststyle = 3
"banner off
let g:netrw_banner = 1
"open files in a new tab
let g:netrw_browse_split = 3

