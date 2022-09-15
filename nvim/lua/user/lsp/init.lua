local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  vim.notify("Failed to load package: 'lspconfig'")
  return
end

require("user.lsp.lsp-installer")
require("user.lsp.handlers").setup()
