# Neovim Configurations (transforming neovim to an IDE)
Transitioning from [vim](https://www.vim.org/) to [neovim](https://neovim.io/).

## Credits
This configuration is heavily inspired by [Neovim-from-scratch](https://github.com/LunarVim/Neovim-from-scratch) of [LunarVim](https://github.com/LunarVim).

## Requirements
- Lua (this configuration file uses Lua and not VimScript)
- Neovim
- Git (for [gitsigns](https://github.com/lewis6991/gitsigns.nvim))
- Node (for [iamcco/markdown-preview](https://github.com/iamcco/markdown-preview.nvim))
> You could use yarn but you must edit this line in `./lua/user/plugins.lua`:
```
use {'iamcco/markdown-preview.nvim', run = 'cd app && npm install'}
```
Change `npm` with `yarn` or whatever Node package manager you use. i.e. if you use yarn:
```
use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'}
```

## Installation
Visit [Github Download Directory](https://download-directory.github.io/). Then copy-paste this url:
```
https://github.com/Philiks/dotfiles/tree/main/nvim
```
Extract the files inside `~/.config/nvim`
> Create the directory if it is missing
The final structure should be:
```
.config
└── nvim
    ├── init.lua
    ├── lua
    │   └── user
    │       ├── autopairs.lua
    │       ├── colorscheme.lua
    │       ├── comment.lua
    │       ├── completion.lua
    │       ├── keymaps.lua
    │       ├── lsp
    │       │   ├── handlers.lua
    │       │   ├── init.lua
    │       │   ├── lsp-installer.lua
    │       │   └── settings
    │       │       ├── jsonls.lua
    │       │       └── sumneko_lua.lua
    │       ├── options.lua
    │       ├── plugins.lua
    │       ├── telescope.lua
    │       └── treesitter.lua
    ├── plugin
    │   └── packer_compiled.lua
    └── README.md
```
