function ConfigHighliting()
  vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
  vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

function ReloadNeoVimConfig()
  local packer = require('packer')
  vim.cmd([[source ~/.config/nvim/init.lua]])
  packer.sync()
  packer.compile()
  vim.cmd([[source ~/.config/nvim/init.lua]])
end
