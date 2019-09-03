execute pathogen#infect()

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
colorscheme darktheme

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
set modelines=0
set nomodeline

"RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>

"vim background transparent
hi Normal guibg=NONE ctermbg=NONE

"vim signify options
let g:signify_vcs_list = [ 'git' ]

"Colorizer config
"only highlight certain filetypes
:let g:colorizer_auto_filetype='css,html'

"syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"split
set splitbelow
set splitright

"highlight search
set hlsearch

"silicon
let g:silicon = {
      \ 'theme':              'DarkNeon',
      \ 'font':                  'Hack',
      \ 'background':         '#aaaaff',
      \ 'shadow-color':       '#555555',
      \ 'line-pad':                   2,
      \ 'pad-horiz':                  5,
      \ 'pad-vert':                   5,
      \ 'shadow-blur-radius':         0,
      \ 'shadow-offset-x':            0,
      \ 'shadow-offset-y':            0,
      \ 'line-number':           v:true,
      \ 'round-corner':          v:true,
      \ 'window-controls':       v:false,
      \ }

"auto-expanding
inoremap ( ()<C-c>i
inoremap { {}<C-c>i
inoremap [ []<C-c>i
inoremap < <><C-c>i
inoremap ' ''<C-c>i
inoremap " ""<C-c>i

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
set statusline+=|
set statusline+=\ 
set statusline+=%P
set statusline+=->
set statusline+=%L
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
