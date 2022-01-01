" Sets how many lines of history VIM has to remember
set history=500

" Line info
set number relativenumber
set ruler

" Tab settings
set expandtab     " I prefer space over tab
set smarttab      " Be smart when using tabs
set tabstop=2     " 1 tab = 4 spaces
set shiftwidth=2  " 1 tab = 4 spaces

" Linebreak on 500 characters
set lbr
set tw=500

set ai   " Auto indent
set si   " Smart indent
set wrap " Wrap lines

" Enable syntax highlighting
syntax enable

set t_Co=256

set background=dark

" AWIT syntax
autocmd BufRead,BufNewFile *.awit set filetype=awit
