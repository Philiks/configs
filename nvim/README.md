# Neovim Configurations (transforming neovim to an IDE)
Transitioning from [vim](https://www.vim.org/) to [neovim](https://neovim.io/).

## Credits
This configuration is heavily inspired by [Neovim-from-scratch](https://github.com/LunarVim/Neovim-from-scratch) of [LunarVim](https://github.com/LunarVim).

## Dependencies
- Lua (this configuration file uses Lua and not VimScript)
- Neovim
- grep (for [telescope](https://github.com/nvim-telescope/telescope.nvim) `live_grep` command)
- Git (for [gitsigns](https://github.com/lewis6991/gitsigns.nvim))
- ESLint an npm [package](https://www.npmjs.com/package/eslint) (for Null-ls [diagnostics](https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics))
> You must install this package globally using `-g` flag
- Prettier an npm [package](https://www.npmjs.com/package/prettier) (for Null-ls [formatting](https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting))
> You must install this package globally using `-g` flag
- ctags (for [preservim/tagbar](https://github.com/preservim/tagbar))
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
    │       ├── alpha.lua
    │       ├── bufferline.lua
    │       ├── colorscheme.lua
    │       ├── comment.lua
    │       ├── completion.lua
    │       ├── gitsigns.lua
    │       ├── impatient.lua
    │       ├── indentline.lua
    │       ├── keymaps.lua
    │       ├── lsp
    │       │   ├── handlers.lua
    │       │   ├── init.lua
    │       │   ├── lsp-installer.lua
    │       │   ├── null-ls.lua
    │       │   └── settings
    │       │       ├── jsonls.lua
    │       │       └── sumneko_lua.lua
    │       ├── lualine.lua
    │       ├── nvim-tree.lua
    │       ├── options.lua
    │       ├── plugins.lua
    │       ├── telescope.lua
    │       └── treesitter.lua
    ├── plugin
    │   └── packer_compiled.lua
    └── README.md
```

## Keymaps
List of keybindings that this config use.

### Modes
| Legend | Mode |
| :-: | :- |
| n | normal |
| i | insert |
| v | visual |
| x | visual block |
| t | terminal |
| c | command |

### Modifier Keys
`*` as any character
| Key | Modifier |
| :-: | :-: |
| `<C-*>` | Ctrl |
| `<S-*>` | Shift |
| `<A-*>` | Alt |
| `<leader>` | leader |
| `<CR>` | Carriage Return |
| `<Tab>` | Tab |
| `<Space>` | Space |
| `<ESC>` | Escape |
> Note: `<S-g>` and `G` are the same. Uppercase characters in the keymaps are treated as keys with the `Shift` modifier.<br />
> Note: You can set any `<leader>` you want, in this keymap, `<leader>` is mapped to `<Space>`.

### Special Characters
| Symbol | Character Equivalent |
| :-: | :-: |
| `_` | is actually a forward slash `/` |
| `<cmd>` | `lua`'s way of calling `neovim`'s `COMMAND` mode |

### Default keymaps that are worth remembering
| Mode | Keymap | Action |
| :-: | :-: | :- |
| n | `zc` | will fold (close) a block |
| n | `zo` | will unfold (open) a block |
| n | `za` | will fold/unfold (toggle) a block |
|||
| n | `<C-w>s` | split window horizontally |
| n | `<C-w>v` | split window vertically |
|||
| n | `<C-w>` | delete previous word |

### Custom keymaps
| Mode | Keymap | Default | Action |
| :-: | :-: | :-: | :- |
| * | `<Space>` | `<Nop>` | remap space as *leader* key |
|||
| n | `<S-h>` | `^` | move cursor to the first character of the line |
| n | `<S-l>` | `$` | move cursor to the last character of the line |
|||
| n | `<leader>a` | `ggVG` | select all text in buffer |
| n | `<leader>ya` | `ggyG` | yank all text in buffer |
|||
| n | `<C-_>` | `:nohlsearch` | clear search highlights |
|||
| n | `<C-h>` | `<C-w>h` | navigate/move to left window/split |
| n | `<C-j>` | `<C-w>j` | navigate/move to bottom window/split |
| n | `<C-k>` | `<C-w>k` | navigate/move to top window/split |
| n | `<C-l>` | `<C-w>l` | navigate/move to right window/split |
|||
| n | `<A-k>` | `:resize -2<CR>` | decrease height of current window |
| n | `<A-j>` | `:resize +2<CR>` | increase height of current window |
| n | `<A-h>` | `:vertical resize -2<CR>` | decrease width of current window |
| n | `<A-l>` | `:vertical resize +2<CR>` | increase width of current window |
|||
| n | `<S-h>` | `:bnext<CR>` | go to next open buffer |
| n | `<S-l>` | `:bprevious<CR>` | go to previous open buffer |
|||
| i | `<S-Tab>` | `<C-o><<` | shift tab or reduce left indent |
|||
| i | `<A-q>` | `<ESC>` | exit `INSERT` mode |
|||
| v | `<` | `<gv` | indent left |
| v | `>` | `>gv` | indent right |
|||
| v | `<A-j>` | `:m .+1<CR>==` | move text downward |
| v | `<A-k>` | `:m .-2<CR>==` | move text upward |
|||
| v | `<p>` | `"_dP` | keep previously deleted/yanked text |
|||
| x | `J` | `:move '>+1<CR>gv-gv` | move block of text downward |
| x | `K` | `:move '<-2<CR>gv-gv` | move block of text upward |
| x | `<A-j>` | `:move '>+1<CR>gv-gv` | move block of text downward |
| x | `<A-k>` | `:move '<-2<CR>gv-gv` | move block of text upward |
|||
| t | `<C-h>` | `<C-\\><C-N><C-w>h` | navigate/move to left terminal |
| t | `<C-j>` | `<C-\\><C-N><C-w>j` | navigate/move to bottom terminal |
| t | `<C-k>` | `<C-\\><C-N><C-w>k` | navigate/move to top terminal |
| t | `<C-l>` | `<C-\\><C-N><C-w>l` | navigate/move to right terminal |

### Telescope keymaps
| Mode | Keymap | Action |
| :-: | :-: | :- |
| n | `<leader>f` | opens telescope for finding files |
| n | `<leader>g` | opens telescope for `grep` utility tool |
| n | `<leader>m` | opens telescope for finding media files |
|||
| Telescope | `<Esc>` | close telescope |
| Telescope | `<CR>` | select selected option |
| Telescope | `<C-x>` | select horizontal option |
| Telescope | `<C-v>` | select vertical option |
| Telescope | `<C-t>` | select tab option |
|||
| Telescope | `<C-q>` | send selected option to bottom of window |
| Telescope | `<M-q>` | open buffer to bottom of window |
|||
| Telescope | `<S-Tab>` | navigate/move to bottom options |
| Telescope | `<Tab>` | navigate/move to top options |
| Telescope | `j` | navigate/move to bottom options |
| Telescope | `k` | navigate/move to top options |
| Telescope | `<Down>` | navigate/move to bottom options |
| Telescope | `<Up>` | navigate/move to top options |
|||
| Telescope | `H` | navigate/move to topmost options |
| Telescope | `M` | navigate/move to middle options |
| Telescope | `L` | navigate/move to bottommost options |
| Telescope | `gg` | navigate/move to topmost options |
| Telescope | `G` | navigate/move to bottommost options |
|||
| Telescope | `<C-u>` | scroll upwards through options |
| Telescope | `<C-d>` | scroll downwards through options |
| Telescope | `<PageUp>` | scroll upwards through options |
| Telescope | `<PageDown>` | scroll downwards through options |
|||
| Telescope | `?` | shows these keybindings |

### NvimTree keymaps
| Mode | Keymap | Action |
| :-: | :-: | :- |
| n | `<leader>l` | toggle explorer — similar to `:Lexplore` |
| NvimTree | `l` \| `e` \| `<CR>` | open the file in buffer or uncollapse the directory |
| NvimTree | `h` | collapse the directory |
| NvimTree | `v` | open the file buffer in another window or uncollapse the directory |
| NvimTree | `r` | rename the selected file/directory |
| NvimTree | `x` | cut the selected file/directory |
| NvimTree | `d` | delete the selected file/directory |

### TreeSitter keymaps
| Mode | Keymap | Action |
| :-: | :-: | :- |
| n | `<leader>F` | formats the buffer using configured `lsp` formatter |
|||
| n | `gD` | go to declaration of the keyword |
| n | `gd` | go to definition of the keyword |
|||
| n | `K` | highlight the keyword |
|||
| n | `gi` | go to implementation of the keyword |
| n | `<C-k>` | provide the signature of the function |
|||
| n | `<leader>rn` | rename the keyword |
| n | `gr` | show the places that references the keyword in the buffer |
| n | `<leader>ca` | show the code actions that can be done to the keyword |
||||
| n | `gl` | open a floating window describing the diagnostic |
| n | `[d` | go to previous diagnostic in the buffer |
| n | `]d` | go to next diagnostic in the buffer |
| n | `<leader>q` | provide the diagnostics on the bottom of the window |

### VimBbye keymaps
| Mode | Keymap | Action |
| :-: | :-: | :- |
| n | `<leader>c` | closes the current buffer |

### Tagbar keymaps
| Mode | Keymap | Action |
| :-: | :-: | :- |
| n | `<leader>d` | toggle tags in the buffer |

### Autopairs keymaps
| Mode | Keymap | Action |
| :-: | :-: | :- |
| i | `<A-e>` | select from which position the closing pair be placed |

### Comment keymaps
| Mode | Keymap | Action |
| :-: | :-: | :- |
| n | `gcc` | context sensitive comment string |

### Completion keymaps
| Mode | Keymap | Action |
| :-: | :-: | :- |
| n | `<C-y>` | toggle disable/enable completion |
| i \| c | `<C-Space>` | toggle completion menu |
| i \| c | `<C-e>` | close the completion menu |
|||
| CmpMenu | `<C-k>` | navigate/move to top option |
| CmpMenu | `<C-j>` | navigate/move to bottom option |
| CmpMenu | `<S-Tab>` | navigate/move to top option |
| CmpMenu | `<Tab>` | navigate/move to bottom option |
|||
| CmpMenu | `<CR>` | select the option |
|||
| CmpDocs | `<C-h>` | scroll upwards the documentation |
| CmpDocs | `<C-l>` | scroll downwards the documentation |

### Completion keymaps
| Mode | Keymap | Action |
| :-: | :-: | :- |
| n | `]c` | go to next hunk |
| n | `[c` | go to previous hunk |
|||
| n \| v | `<leader>hs` | stage the hunk in the buffer |
| n \| v | `<leader>hr` | reset the stage of the hunk in the buffer |
|||
| n | `<leader>hS` | stage the buffer |
| n | `<leader>hu` | undo stage the buffer |
| n | `<leader>hR` | reset the changes in the buffer |
|||
| n | `<leader>hp` | open a floating menu detailing the hunk |
|||
| n | `<leader>hb` | open a floating menu detailing the recent commit change of the line |
| n | `<leader>tb` | display the details at the end of the line |
|||
| n | `<leader>hd` | vertically split the window to show the difference between the file |
| n | `<leader>hD` | vertically split the window to show the difference between the file |
|||
| n | `<leader>td` | expand the window to show the deleted line/s |
|||
| o \| x | `ih` | select a hunk |
