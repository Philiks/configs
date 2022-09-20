local lsp_installer_status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not lsp_installer_status_ok then
  vim.notify("Failed to load package: 'nvim-lsp-installer'")
  return
end

lsp_installer.setup {}

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  vim.notify("Failed to load package: 'lspconfig'")
  return
end

-- `on_server_ready` is deprecated, use individual `setup` for each server.
-- See: https://github.com/williamboman/nvim-lsp-installer/discussions/636
local opts = {
  on_attach = require("user.lsp.handlers").on_attach,
  capabilities = require("user.lsp.handlers").capabilities,
}

local sumneko_lua_opts = require("user.lsp.settings.sumneko_lua")
lspconfig.sumneko_lua.setup {
  on_attach = opts.on_attach,
  capabilities = opts.capabilities,
  settings = sumneko_lua_opts.settings,
}

local jsonls_opts = require("user.lsp.settings.jsonls")
lspconfig.jsonls.setup {
  on_attach = opts.on_attach,
  capabilities = opts.capabilities,
  settings = jsonls_opts.settings,
  setup = jsonls_opts.settings,
}

for _, server in ipairs { "tsserver", "jdtls", "html" } do
  lspconfig[server].setup {
    on_attach = opts.on_attach,
    capabilities = opts.capabilities,
  }
end
