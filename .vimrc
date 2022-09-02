" Execute local vimrc for a particular project.
" Useful when the project has different lint config than your personal vimrc.
set exrc

" Sets how many lines of history VIM has to remember.
set history=500

" Line info
set number relativenumber
set ruler

" Tab settings
set expandtab     " I prefer space over tab
set smarttab      " Be smart when using tabs
set tabstop=2     " 1 tab = 4 spaces
set shiftwidth=2  " 1 tab = 4 spaces

" Linebreak on 80 characters
set linebreak
set textwidth=80
set wrap " Wrap lines

" Indention
set autoindent    " Auto indent
set smartindent   " Smart indent

" Scroll offset
set scrolloff=8

" Searched items do not remain highlighted.
set nohlsearch

" Column settings
set colorcolumn=80
set signcolumn=yes

" Enable syntax highlighting
syntax enable

set t_Co=256

set background=dark

" AWIT syntax
autocmd BufRead,BufNewFile *.awit set filetype=awit
