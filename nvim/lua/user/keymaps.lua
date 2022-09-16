-- Mapping you might forget
-- NORMAL --
-- Code block folding
-- zc (close) will fold a block
-- zo (open) will unfold a block and 
-- za (toggle) will toggle open and close

-- Window splitting
-- <C-w>s horizontal splitting
-- <C-w>v vertical splitting

-- NORMAL --
-- (can't map it here this)
-- <C-w> delete previous word (Ctrl-BS) in other text editor

local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Moving cursor to start and end of line
keymap("n", "<S-h>", "^", opts)
keymap("n", "<S-l>", "$", opts)

-- Select all text in buffer
keymap("n", "<leader>a", "ggVG", opts)

-- Yank all text in buffer
keymap("n", "<leader>ya", "ggyG", opts)

-- Remap clear search highlights since window navigation overrides CTRL-l
keymap("n", "<C-_>", ":nohlsearch<CR>", opts)

-- Better window navigation (moving between splits)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Open explorer
keymap("n", "<leader>h", ":Hex 30<CR>", opts)
keymap("n", "<leader>l", ":Lex 30<CR>", opts)

-- Resize with vim navigation keys
keymap("n", "<A-k>", ":resize -2<CR>", opts)
keymap("n", "<A-j>", ":resize +2<CR>", opts)
keymap("n", "<A-h>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-l>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-n>", ":bnext<CR>", opts)
keymap("n", "<S-b>", ":bprevious<CR>", opts)

-- Insert --
-- Backward tab
keymap("i", "<S-Tab>", "<C-o><<", opts)

-- Exit insert mode Alt-q(uit)
keymap("i", "<A-q>", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Telescope --
keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>t", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>m", "<cmd>Telescope media_files<cr>", opts)
