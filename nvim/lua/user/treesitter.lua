local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  vim.notify("Failed to load package: 'nvim-treesitter.configs'")
  return
end

configs.setup {
  -- A list of parser names, or "all"
  -- Using "all" causes problems since some parsers are no longer maintained.
  ensure_installed = {
    "bash",
    "c",
    "comment",
    "cpp",
    "css",
    "dockerfile",
    "gitattributes",
    "gitignore",
    "help",
    "html",
    "http",
    "java",
    "javascript",
    "jsdoc",
    "json",
    "json5",
    "kotlin",
    "lua",
    "markdown",
    "markdown_inline",
    "php",
    "python",
    "regex",
    "sql",
    "tsx",
    "typescript",
    "vim",
    "yaml",
  },
  sync_install = false, -- Install parsers synchronously (only applied to `ensure_installed`)
  auto_install = true, -- Automatically install missing parsers when entering buffer
  ignore_install = { "" }, -- List of parsers to ignore installing (for "all")
  autopairs = {
    enable = true,
  },

  highlight = {
    enable = true, -- `false` will disable the whole extension
    disable = { "c", "rust" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = false, -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
  },

  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }
}
