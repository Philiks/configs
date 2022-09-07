# Neovim Configurations (transforming neovim to an IDE)
Transitioning from [vim](https://www.vim.org/) to [neovim](https://neovim.io/).

## Credits
This configuration is heavily inspired by [Neovim-from-scratch](https://github.com/LunarVim/Neovim-from-scratch) of [LunarVim](https://github.com/LunarVim).

## Requirements
- Neovim
- Git (for [gitsigns](https://github.com/lewis6991/gitsigns.nvim))

## Installation
Visit [Github Download Directory](https://download-directory.github.io/). Then copy-paste this url
```
https://github.com/Philiks/dotfiles/tree/main/nvim
```
Extract the files inside `~/.config/nvim`
> Create the directory if it is missing
The final structure should be
```
~
│
└─  .config
    │
    └─  nvim
        │  init.lua 
        │  README.md
        └─  lua
            │  init.lua 
            │  README.md
            └─  user
                │  options.lua 
```
