set tabstop=4
set shiftwidth=4
set expandtab
syntax on
set autoindent
set showcmd " show me what i'm typing
"set showmode " show current mode -- INSERT --
set noswapfile " don't use swap file
set ignorecase
set smartcase

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

let loaded_matchparen=1

execute pathogen#infect()

"powerline plugin
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
"let g:Powerline_symbols = 'fancy'
"set laststatus=2
"set encoding=utf-8
