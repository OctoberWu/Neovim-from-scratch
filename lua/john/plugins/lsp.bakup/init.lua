local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "john.plugins.lsp.mason"
require("john.plugins.lsp.handlers").setup()
require "john.plugins.lsp.null-ls"
