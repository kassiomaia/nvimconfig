-- LSP Zero
local lsp = require("lsp-zero")
lsp.preset('recommended')

lsp.ensure_installed({
  'clangd',
  'gopls'
})


lsp.set_preferences({
  sign_icons = {}
})

local M = {}

M.on_attach = function(_, bufnr)
  local options = { buffer = bufnr, remap = false }
  vim.keymap.set('n', '<leader>D', '<cmd>lua vim.diagnostic.open_float()<CR>', options)
end

lsp.configure('gopls', M)
lsp.configure('lua_language_server', M)
lsp.configure('sumneko_lua', M)
lsp.configure('clangd', M)

lsp.nvim_workspace()
lsp.setup()
