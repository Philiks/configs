local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  vim.notify("Failed to load package: 'packer'")
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- Plugins are placed here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use { -- Run :MarkdownPreview to live preview *.md files
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install"
  }
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use "numToStr/Comment.nvim" -- Easily comment stuff
  use "kyazdani42/nvim-web-devicons" -- Used to display file icons
  use "kyazdani42/nvim-tree.lua" -- Better file explorer than :Lexplore
  use "akinsho/bufferline.nvim" -- Bufferline similar to tabs in other IDEs
  use "moll/vim-bbye" -- Allows buffers to be closed individually

  -- Colorscheme
  use "folke/tokyonight.nvim" -- Change of pace from solarized dark

  -- Completion plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- Buffer completions
  use "hrsh7th/cmp-path" -- Path completions
  use "hrsh7th/cmp-cmdline" -- Cmdline completions
  use "hrsh7th/cmp-nvim-lsp" -- Lsp completion
  use "hrsh7th/cmp-nvim-lua" -- Lua completion
  use "saadparwaiz1/cmp_luasnip" -- Snippet completions
  use "nvim-lualine/lualine.nvim" -- Neovim status line plugin
  use "lewis6991/impatient.nvim" -- Improve startup time for Neovim
  use "lukas-reineke/indent-blankline.nvim" -- Indent guides for Neovim

  -- Snippets
  use "L3MON4D3/LuaSnip" -- Snippet engine
  use "rafamadriz/friendly-snippets" -- A bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- Enable LSP
  use "williamboman/nvim-lsp-installer" -- Simple to use language server installer
  use "tamago324/nlsp-settings.nvim" -- Language server settings defined in json for
  use "jose-elias-alvarez/null-ls.nvim" -- For formatters and linters

  -- Telescope
  use "nvim-telescope/telescope.nvim" -- Fuzzy finder inside buffer or files within directory
  use "nvim-telescope/telescope-media-files.nvim" -- Telescope for media files such as images

  -- Treesitter
  use { -- Highlighting based on the abstract syntax tree
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "p00f/nvim-ts-rainbow" -- Colored paired brackets, parenthesis, and such
  use "JoosepAlviste/nvim-ts-context-commentstring" -- Context/file type sensitive comments

  -- Git
  use "lewis6991/gitsigns.nvim" -- Git signs in the vim sign column

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
