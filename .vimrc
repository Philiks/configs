" Execute local vimrc for a particular project.
" Useful when the project has different lint config than your personal vimrc.
set exrc

" writebackup is on so the current file have backup but removed after
" successful write
set nobackup

" don't create swapfile (no recovery tho)
set noswapfile

" access system clipboard
set clipboard = "unnamedplus"

" the only encoding I know :P
set fileencoding = "utf-8"

" space for vim command line
set cmdheight = 2

" pop up menu height
set pumheight = 10

" IDE-like completion options
set completeopt = { "menuone", "noselect" }

" you're a programmer, don't conceal code syntaxes
set conceallevel = 0

" allow mouse to be used in vim
set mouse = "a"

" don't show mode like -- INSERT --
set noshowmode

" always show tabs
set showtabline = 2

" ignore case in serch pattern
set ignorecase

" highlight results of search pattern
set hlsearch

" allow smart case (especially in uppercase search)
set smartcase

" of course you would want auto-indent
set smartindent

" force horizontal splits to go below current window
set splitbelow

" force vertical splits to go to the right current window
set splitright

" set term gui colors (most terminals support this)
-- set termguicolors

" time to wait for a mapped sequence to complete (in millis)
set timeoutlen = 1000

" enable persistent undo (even after reboot!)
set undofile

" faster completion (default is 4000ms)
set updatetime = 300

" convert tabs to spaces
set expandtab

" number of spaces inserted for indentation
set shiftwidth = 2

" 1 tab = 2 spaces
set tabstop = 2

" highlight the current line
set cursorline

" show line info at the right side of status line
set ruler

" set numbered lines
set number

" set relative numbered lines
set relativenumber

" set number width
set numberwidth = 4

" always show the sign column (beside the number column)
set signcolumn = "yes"

" put colored line on the preferred textwidth (80 characters)
set colorcolumn = "80"

" display lines as one long line
set nowrap

" vertical offset before triggering scroll (default is all the way)
set scrolloff = 8

" horizontal offset before triggering scroll (default is all the way)
set sidescrolloff = 8

" font to be used in graphical vim applications
set guifont = "monospace:h17"

" don't show menu completion message
set shortmess:append "c"

" moves the cursor to previous or next line when it reached the end
set whichwrap+=<,>,[,],h,l

" add "-" to the keywords when used in searching
set iskeyword+=-

" set highlight color for colorcolumn
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Enable syntax highlighting
syntax enable

set t_Co=256

" AWIT syntax
autocmd BufRead,BufNewFile *.awit set filetype=awit
