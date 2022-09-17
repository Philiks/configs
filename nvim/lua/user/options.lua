local o = vim.opt    -- assign redundant vim.opt

-- use :help [option] for documentation
o.exrc = true                             -- use project-specific init.vim (if there is)
o.backup = false                          -- writebackup is on so the current file have backup but removed after successful write
o.clipboard = "unnamedplus"               -- access system clipboard
o.fileencoding = "utf-8"                  -- the only encoding I know :P
o.cmdheight = 2                           -- space for neovim command line
o.pumheight = 10                          -- pop up menu height
o.completeopt = { "menuone", "noselect" } -- IDE-like completion options
o.conceallevel = 0                        -- you're a programmer, don't conceal code syntaxes
o.hlsearch = true                         -- highlight results of search pattern
o.mouse = "a"                             -- allow mouse to be used in neovim
o.showtabline = 2                         -- always show tabs
o.ignorecase = true                       -- ignore case in serch pattern
o.smartcase = true                        -- allow smart case (especially in uppercase search)
o.smartindent = true                      -- of course you would want auto-indent
o.splitbelow = true                       -- force horizontal splits to go below current window
o.splitright = true                       -- force vertical splits to go to the right current window
o.swapfile = false                        -- don't create swapfile (no recovery tho)
o.termguicolors = true                    -- set term gui colors (most terminals support this)
o.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in millis)
o.undofile = true                         -- enable persistent undo (even after reboot!)
o.updatetime = 300                        -- faster completion (default is 4000ms)
o.expandtab = true                        -- convert tabs to spaces
o.shiftwidth = 2                          -- number of spaces inserted for indentation
o.tabstop = 2                             -- 1 tab = 2 spaces
o.cursorline = true                       -- highlight the current line
o.number = true                           -- set numbered lines
o.relativenumber = true                   -- set relative numbered lines
o.numberwidth = 4                         -- set number width
o.signcolumn = "yes"                      -- always show the sign column (beside the number column)
o.colorcolumn = "80"                        -- put colored line on the preferred textwidth (80 characters)
o.wrap = false                            -- display lines as one long line
o.scrolloff = 8                           -- vertical offset before triggering scroll (default is all the way)
o.sidescrolloff = 8                       -- horizontal offset before triggering scroll (default is all the way)
o.guifont = "monospace:h17"               -- font to be used in graphical neovim applications

o.shortmess:append "c"                    -- don't show menu completion message

vim.cmd "set whichwrap+=<,>,[,],h,l"      -- moves the cursor to previous or next line when it reached the end
vim.cmd [[set iskeyword+=-]]              -- add "-" to the keywords when used in searching
vim.cmd [[highlight ColorColumn ctermbg=0 guibg=lightgrey]]  -- set highlight color for colorcolumn
