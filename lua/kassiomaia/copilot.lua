vim.g.copilot_not_tab_map = true
vim.g.copilot_assume_mapped = false

vim.api.nvim_set_keymap('i', '<F3>', 'copilot#Accept("<CR>")', { silent = true, expr = true, noremap = true })

vim.g.copilot_filetypes = {
  ["*"] = true,
}
