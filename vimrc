" Move this file to your home directory as .vimrc
nnoremap <C-p> :call system("wl-copy", @")<CR>
set expandtab
:retab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set nu
set textwidth=120
set wrap
set linebreak
inoremap jk <Esc>
syntax on
filetype plugin indent on
set mouse-=a
