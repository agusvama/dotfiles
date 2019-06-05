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
colo shades_of_purple

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

set number

"status bar
set laststatus=2
set statusline=
set statusline+=%1*
hi User1 ctermfg=darkgreen
set statusline+=%=
set statusline+=|
set statusline+=\ 
set statusline+=%l
set statusline+=:
set statusline+=%c
set statusline+=\ 
set statusline+=|
set statusline+=\ 
set statusline+=%f
set statusline+=\ 
set statusline+=|
set statusline+=\ 
set statusline+=%{b:gitbranch}
set statusline+=\ 
set statusline+=%m
set statusline+=\ 
set statusline+=|
set statusline+=\ 
set statusline+=%y
set statusline+=\ 
set statusline+=|
set statusline+=\ 
set statusline+=%{strlen(&fenc)?&fenc:'none'}

function! StatuslineGitBranch()
  let b:gitbranch=""
  if &modifiable
    lcd %:p:h
    let l:gitrevparse=system("git rev-parse --abbrev-ref HEAD")
    lcd -
    if l:gitrevparse!~"fatal: not a git repository"
      let b:gitbranch="(".substitute(l:gitrevparse, '\n', '', 'g').") "
    endif
  endif
endfunction
    
augroup GetGitBranch
  autocmd!
  autocmd VimEnter,WinEnter,BufEnter * call StatuslineGitBranch()
augroup END

hi Normal guibg=NONE ctermbg=NONE
