vim.g.mapleader = " "

function ApplyPluginKeymaps(keymaps)
  local options = {noremap = true, silent = true}

  for _, keymap in pairs(keymaps) do
    vim.api.nvim_set_keymap("n", keymap.key, keymap.cmd, options)
  end
end

return require('packer').startup(function(use)
  -- Core Plugins
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/completion-nvim'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'nvim-treesitter/playground'
  use 'nvim-treesitter/nvim-treesitter-refactor'
  use 'nvim-treesitter/nvim-treesitter-context'

  use {'akinsho/toggleterm.nvim', tag = '*', config = function()
    require('toggleterm').setup{
      size = 20,
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = '1',
      start_in_insert = true,
      persist_size = true,
      direction = 'horizontal',
      close_on_exit = true,
      shell = vim.o.shell,
    }

    local keymaps = {
      open_term = { key = "<leader>t", cmd = "<cmd>:ToggleTerm<CR>" },
    }

    ApplyPluginKeymaps(keymaps)
  end}
  use 'nvim-tree/nvim-web-devicons'
  use {'nvim-tree/nvim-tree.lua', config = function()
    require('nvim-tree').setup {
      update_cwd = true,
      view = {
        width = 30,
        side = 'right',
      }
    }

    local keymaps = {
      open_tree = { key = "<leader>e", cmd = "<cmd>:NvimTreeToggle<CR>" },
    }

    ApplyPluginKeymaps(keymaps)
  end}
	use 'github/copilot.vim'
  use 'f-person/git-blame.nvim'

  -- Colorschemes
  use 'folke/tokyonight.nvim'
  use {
    'mcchrish/zenbones.nvim',
    requires = {'rktjmp/lush.nvim'}
  }
  use {'ayu-theme/ayu-vim', as = 'ayu'}
  use {'dracula/vim', as = 'dracula'}
  use {'rose-pine/neovim', as = 'rose-pine'}
  use {'sainnhe/sonokai', as = 'sonokai'}
  use {'sainnhe/edge', as = 'edge'}
  use {'sainnhe/gruvbox-material', as = 'gruvbox-material'}
  use {'sainnhe/everforest', as = 'everforest'}
  use {'NLKNguyen/papercolor-theme', as = 'papercolor'}
  use {'morhetz/gruvbox', as = 'gruvbox'}
  use {'uloco/bluloco.nvim'}

  -- Language Plugins

  -- use 'sheerun/vim-polyglot'

  -- UI Plugins
  use {'nvim-lualine/lualine.nvim', config = function()
    require('lualine').setup()
  end}

  use {'nvim-telescope/telescope.nvim', config = function()
    require('telescope').setup{
      defaults = {
        file_ignore_patterns = { "node_modules/*", "dist/*", "build/*", ".git/*", "*~" },
      }
    }

    local keymaps = {
      open_telescope = { key = "<leader>f",  cmd = "<cmd>:Telescope<CR>" },
      find_files =     { key = "<leader>ff", cmd = "<cmd>:Telescope find_files<CR>" },
      grep =           { key = "<leader>fg", cmd = "<cmd>:Telescope live_grep<CR>" },
      git_commits =    { key = "<leader>gc", cmd = "<cmd>:Telescope git_commits<CR>" },
      git_bcommits =   { key = "<leader>gb", cmd = "<cmd>:Telescope git_bcommits<CR>" },
      git_branches =   { key = "<leader>gr", cmd = "<cmd>:Telescope git_branches<CR>" },
      git_status =     { key = "<leader>gs", cmd = "<cmd>:Telescope git_status<CR>" },
      git_statsh =     { key = "<leader>gh", cmd = "<cmd>:Telescope git_stash<CR>" },
      man_pages =      { key = "<leader>mh", cmd = "<cmd>:Telescope man_pages<CR>" },
      cbuffer_fuzzy =  { key = "<leader>fb", cmd = "<cmd>:Telescope current_buffer_fuzzy_find<CR>" },
      colorschemes =   { key = "<leader>fc", cmd = "<cmd>:Telescope colorscheme<CR>" },
      search_history = { key = "<leader>fh", cmd = "<cmd>:Telescope search_history<CR>" },
      commands =       { key = "<leader>fm", cmd = "<cmd>:Telescope commands<CR>" },
    }

    ApplyPluginKeymaps(keymaps)
  end}

  use {'lukas-reineke/indent-blankline.nvim', config = function()
    require('indent_blankline').setup {
      char = '▏',
      buftype_exclude = {'terminal'},
      show_end_of_line = true,
      show_current_context = true,
      show_first_indent_level = false,
      show_char_blankline = " ",
    }
  end}

  use {"romgrk/barbar.nvim", config = function()
    vim.g.bufferline = {
      animation = true,
      auto_hide = false,
      closable = true,
      clickable = true,
      icon_separator_active = '▎',
      icon_separator_inactive = '▎',
      icon_close_tab = '',
      icon_close_tab_modified = '●',
      icon_pinned = '車',
      maximum_padding = 4,
      maximum_length = 30,
      semantic_letters = true,
      no_name_title = nil,
    }

    local keymaps = {
      next_buffer = { key = "<leader>]", cmd = "<cmd>:BufferNext<CR>" },
      prev_buffer = { key = "<leader>[", cmd = "<cmd>:BufferPrevious<CR>" },
    }

    ApplyPluginKeymaps(keymaps)
  end}

  use {'lewis6991/gitsigns.nvim'}

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional

      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
    }
  }

  use {'folke/lsp-colors.nvim', config=function()
    require('lsp-colors').setup()
  end}

  use {'folke/trouble.nvim', config=function()
    require('trouble').setup {
      auto_open = false,
      auto_close = true,
      auto_preview = false,
      auto_fold = true,
      signs = {
        error = "",
        warning = "",
        hint = "",
        information = "",
        other = "﫠",
      },
      use_diagnostic_signs = true,
    }

    local keymaps = {
      toggle_trouble = { key = "<leader>xx", cmd = "<cmd>:TroubleToggle<CR>" },
    }

    ApplyPluginKeymaps(keymaps)
  end}
end)
