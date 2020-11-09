map <F2> :%s#\s\+$##<cr>

call plug#begin('~/.vim/plugged')
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
" Util
Plug 'chrisbra/Colorizer'
Plug 'Yggdroot/indentLine'
Plug 'gregsexton/MatchTag'
Plug 'luochen1990/rainbow'
Plug 'vim-scripts/ShowTrailingWhitespace'
Plug 'godlygeek/tabular'
Plug 'FooSoft/vim-argwrap'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" rails
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'thoughtbot/vim-rspec'
" git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
" colors
Plug 'arzg/vim-substrata'
Plug 'yassinebridi/vim-purpura'
Plug 'tomasiser/vim-code-dark'
Plug 'bignimbus/pop-punk.vim'
" Fun
Plug 'nbardiuk/vim-gol'

" Initialize plugin system
call plug#end()

"leader remap
let mapleader = " "

"tabs
set tabstop=2
set shiftwidth=2
set expandtab
filetype plugin indent on
set autoindent
set showcmd " show me what i'm typing
set noswapfile " don't use swap file
set ignorecase "search whatever, lower or uppercase
set smartcase  "but not when search pattern contains upper case
set encoding=utf-8

"don't highlight parenthesis, brackets, keys
"let loaded_matchparen=1

"use esc for clean highlighted search
nnoremap <silent> <leader>c :noh<CR>

"enable folding
set foldmethod=indent
set foldlevel=99
"set backspace for fold code
nnoremap <backspace> za

"color
"set background=dark
syntax enable
colorscheme corvine
highlight ShowTrailingWhitespace ctermbg=LightMagenta guibg=NONE
" autocmd BufEnter *.erb colorscheme corvine
" autocmd BufEnter *.js  colorscheme codedark
" autocmd BufEnter *.hs hi Normal guibg=NONE ctermbg=NONE

"argwrap
nnoremap <silent> <leader>a :ArgWrap<CR>

"set leader + , for expand html with emmet
" let g:user_emmet_leader_key=','

"netrw (vim native file explorer)
"style to display files
let g:netrw_liststyle = 3
"banner off
let g:netrw_banner = 1
"open files in a new tab
let g:netrw_browse_split = 3

set nonumber
set modelines=0
set nomodeline

"RSpec.vim mappings
map <Leader>f :call RunCurrentSpecFile()<CR>
map <Leader>t :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>

"vim background transparent
hi Normal guibg=NONE ctermbg=NONE

"vim signify options
let g:signify_vcs_list = [ 'git' ]

"Colorizer config
"only highlight certain filetypes
:let g:colorizer_auto_filetype='css,html'

"split
set splitbelow
set splitright

"highlight search
set hlsearch

"indentLine
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_char = '|'

"switch between buffers
nnoremap <silent> <leader>p :bprevious<CR>
nnoremap <silent> <leader>n :bnext<CR>
nnoremap <silent> <leader>d :bdelete<CR>

"rainbow parentheses
let g:rainbow_active = 1

"tagbar
" map <leader>f :TagbarToggle<CR>

"airline
let g:airline_theme='bubblegum'
let g:airline#extensions#hunks#enabled = 1

"vimagit
map <leader>m :Magit<CR>

"clipboard copying and pasting
xnoremap <C-c> "+y
nnoremap <C-p> "+p

" move visual lines
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" startify
let g:startify_relative_path = 0
