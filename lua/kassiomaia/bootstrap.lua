-- Initial Configuration

vim.opt.syntax = "on"
vim.cmd("filetype plugin indent on")
vim.opt.number = true
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.cursorline = false
vim.opt.wrap = false
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hidden = true
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.wildmenu = true
vim.opt.wildmode = "list:longest"
vim.opt.termguicolors = true
vim.opt.background = "light"
vim.opt.list = true
vim.opt.listchars = {tab = '▸ ', trail = '·', extends = '>', precedes = '<'}
vim.opt.showmode = true
vim.opt.showcmd = true
vim.opt.history = 1000

require('kassiomaia/utils')
require('kassiomaia/plugins')
require('kassiomaia/treesitter')
require('kassiomaia/themes')
require('kassiomaia/lsp-zero')
require('kassiomaia/copilot')
require('kassiomaia/gitsigns')

vim.cmd("autocmd VimEnter * NvimTreeToggle")
