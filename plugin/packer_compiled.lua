-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/kassio/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/kassio/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/kassio/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/kassio/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/kassio/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ayu = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/ayu",
    url = "https://github.com/ayu-theme/ayu-vim"
  },
  ["barbar.nvim"] = {
    config = { "\27LJ\2\n™\3\0\0\4\0\n\0\r6\0\0\0009\0\1\0005\1\3\0=\1\2\0005\0\5\0005\1\4\0=\1\6\0005\1\a\0=\1\b\0006\1\t\0\18\3\0\0B\1\2\1K\0\1\0\23ApplyPluginKeymaps\16prev_buffer\1\0\2\bkey\14<leader>[\bcmd\29<cmd>:BufferPrevious<CR>\16next_buffer\1\0\0\1\0\2\bkey\14<leader>]\bcmd\25<cmd>:BufferNext<CR>\1\0\f\26icon_separator_active\b‚ñé\14clickable\2\rclosable\2\14auto_hide\1\14animation\2\21semantic_letters\2\19maximum_length\3\30\20maximum_padding\3\4\16icon_pinned\bÔ§Ç\28icon_close_tab_modified\b‚óè\19icon_close_tab\bÔôï\28icon_separator_inactive\b‚ñé\15bufferline\6g\bvim\0" },
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["bluloco.nvim"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/bluloco.nvim",
    url = "https://github.com/uloco/bluloco.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/completion-nvim",
    url = "https://github.com/nvim-lua/completion-nvim"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  dracula = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/dracula",
    url = "https://github.com/dracula/vim"
  },
  edge = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/edge",
    url = "https://github.com/sainnhe/edge"
  },
  everforest = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/everforest",
    url = "https://github.com/sainnhe/everforest"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["git-blame.nvim"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/git-blame.nvim",
    url = "https://github.com/f-person/git-blame.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n \1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\20buftype_exclude\1\2\0\0\rterminal\1\0\5\28show_first_indent_level\1\25show_current_context\2\21show_end_of_line\2\tchar\b‚ñè\24show_char_blankline\6 \nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-colors.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15lsp-colors\frequire\0" },
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim",
    url = "https://github.com/folke/lsp-colors.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/lush.nvim",
    url = "https://github.com/rktjmp/lush.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n”\1\0\0\4\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0015\0\a\0005\1\6\0=\1\b\0006\1\t\0\18\3\0\0B\1\2\1K\0\1\0\23ApplyPluginKeymaps\14open_tree\1\0\0\1\0\2\bkey\14<leader>e\bcmd\29<cmd>:NvimTreeToggle<CR>\tview\1\0\2\tside\nright\nwidth\3\30\1\0\1\15update_cwd\2\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-refactor"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  papercolor = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/papercolor",
    url = "https://github.com/NLKNguyen/papercolor-theme"
  },
  playground = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["rose-pine"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  sonokai = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/sonokai",
    url = "https://github.com/sainnhe/sonokai"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n˙\b\0\0\5\0$\0)6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0015\0\t\0005\1\b\0=\1\n\0005\1\v\0=\1\f\0005\1\r\0=\1\14\0005\1\15\0=\1\16\0005\1\17\0=\1\18\0005\1\19\0=\1\20\0005\1\21\0=\1\22\0005\1\23\0=\1\24\0005\1\25\0=\1\26\0005\1\27\0=\1\28\0005\1\29\0=\1\30\0005\1\31\0=\1 \0005\1!\0=\1\"\0006\1#\0\18\3\0\0B\1\2\1K\0\1\0\23ApplyPluginKeymaps\rcommands\1\0\2\bkey\15<leader>fm\bcmd!<cmd>:Telescope commands<CR>\19search_history\1\0\2\bkey\15<leader>fh\bcmd'<cmd>:Telescope search_history<CR>\17colorschemes\1\0\2\bkey\15<leader>fc\bcmd$<cmd>:Telescope colorscheme<CR>\18cbuffer_fuzzy\1\0\2\bkey\15<leader>fb\bcmd2<cmd>:Telescope current_buffer_fuzzy_find<CR>\14man_pages\1\0\2\bkey\15<leader>mh\bcmd\"<cmd>:Telescope man_pages<CR>\15git_statsh\1\0\2\bkey\15<leader>gh\bcmd\"<cmd>:Telescope git_stash<CR>\15git_status\1\0\2\bkey\15<leader>gs\bcmd#<cmd>:Telescope git_status<CR>\17git_branches\1\0\2\bkey\15<leader>gr\bcmd%<cmd>:Telescope git_branches<CR>\17git_bcommits\1\0\2\bkey\15<leader>gb\bcmd%<cmd>:Telescope git_bcommits<CR>\16git_commits\1\0\2\bkey\15<leader>gc\bcmd$<cmd>:Telescope git_commits<CR>\tgrep\1\0\2\bkey\15<leader>fg\bcmd\"<cmd>:Telescope live_grep<CR>\15find_files\1\0\2\bkey\15<leader>ff\bcmd#<cmd>:Telescope find_files<CR>\19open_telescope\1\0\0\1\0\2\bkey\14<leader>f\bcmd\24<cmd>:Telescope<CR>\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\6\0\0\19node_modules/*\vdist/*\fbuild/*\v.git/*\a*~\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n‚\2\0\0\4\0\f\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0026\3\5\0009\3\6\0039\3\a\3=\3\a\2B\0\2\0015\0\t\0005\1\b\0=\1\n\0006\1\v\0\18\3\0\0B\1\2\1K\0\1\0\23ApplyPluginKeymaps\14open_term\1\0\0\1\0\2\bkey\14<leader>t\bcmd\25<cmd>:ToggleTerm<CR>\nshell\6o\bvim\20shade_filetypes\1\0\t\19shading_factor\0061\20shade_terminals\2\17hide_numbers\2\17open_mapping\n<c-\\>\tsize\3\20\18close_on_exit\2\14direction\15horizontal\17persist_size\2\20start_in_insert\2\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n∑\2\0\0\4\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0015\0\a\0005\1\6\0=\1\b\0006\1\t\0\18\3\0\0B\1\2\1K\0\1\0\23ApplyPluginKeymaps\19toggle_trouble\1\0\0\1\0\2\bkey\15<leader>xx\bcmd\28<cmd>:TroubleToggle<CR>\nsigns\1\0\5\nother\bÔ´†\nerror\bÔôô\16information\bÔëâ\thint\bÔ†µ\fwarning\bÔî©\1\0\5\14auto_fold\2\17auto_preview\1\15auto_close\2\14auto_open\1\25use_diagnostic_signs\2\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["zenbones.nvim"] = {
    loaded = true,
    path = "/home/kassio/.local/share/nvim/site/pack/packer/start/zenbones.nvim",
    url = "https://github.com/mcchrish/zenbones.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n \1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\20buftype_exclude\1\2\0\0\rterminal\1\0\5\28show_first_indent_level\1\25show_current_context\2\21show_end_of_line\2\tchar\b‚ñè\24show_char_blankline\6 \nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: lsp-colors.nvim
time([[Config for lsp-colors.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15lsp-colors\frequire\0", "config", "lsp-colors.nvim")
time([[Config for lsp-colors.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n‚\2\0\0\4\0\f\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0026\3\5\0009\3\6\0039\3\a\3=\3\a\2B\0\2\0015\0\t\0005\1\b\0=\1\n\0006\1\v\0\18\3\0\0B\1\2\1K\0\1\0\23ApplyPluginKeymaps\14open_term\1\0\0\1\0\2\bkey\14<leader>t\bcmd\25<cmd>:ToggleTerm<CR>\nshell\6o\bvim\20shade_filetypes\1\0\t\19shading_factor\0061\20shade_terminals\2\17hide_numbers\2\17open_mapping\n<c-\\>\tsize\3\20\18close_on_exit\2\14direction\15horizontal\17persist_size\2\20start_in_insert\2\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: barbar.nvim
time([[Config for barbar.nvim]], true)
try_loadstring("\27LJ\2\n™\3\0\0\4\0\n\0\r6\0\0\0009\0\1\0005\1\3\0=\1\2\0005\0\5\0005\1\4\0=\1\6\0005\1\a\0=\1\b\0006\1\t\0\18\3\0\0B\1\2\1K\0\1\0\23ApplyPluginKeymaps\16prev_buffer\1\0\2\bkey\14<leader>[\bcmd\29<cmd>:BufferPrevious<CR>\16next_buffer\1\0\0\1\0\2\bkey\14<leader>]\bcmd\25<cmd>:BufferNext<CR>\1\0\f\26icon_separator_active\b‚ñé\14clickable\2\rclosable\2\14auto_hide\1\14animation\2\21semantic_letters\2\19maximum_length\3\30\20maximum_padding\3\4\16icon_pinned\bÔ§Ç\28icon_close_tab_modified\b‚óè\19icon_close_tab\bÔôï\28icon_separator_inactive\b‚ñé\15bufferline\6g\bvim\0", "config", "barbar.nvim")
time([[Config for barbar.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n˙\b\0\0\5\0$\0)6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0015\0\t\0005\1\b\0=\1\n\0005\1\v\0=\1\f\0005\1\r\0=\1\14\0005\1\15\0=\1\16\0005\1\17\0=\1\18\0005\1\19\0=\1\20\0005\1\21\0=\1\22\0005\1\23\0=\1\24\0005\1\25\0=\1\26\0005\1\27\0=\1\28\0005\1\29\0=\1\30\0005\1\31\0=\1 \0005\1!\0=\1\"\0006\1#\0\18\3\0\0B\1\2\1K\0\1\0\23ApplyPluginKeymaps\rcommands\1\0\2\bkey\15<leader>fm\bcmd!<cmd>:Telescope commands<CR>\19search_history\1\0\2\bkey\15<leader>fh\bcmd'<cmd>:Telescope search_history<CR>\17colorschemes\1\0\2\bkey\15<leader>fc\bcmd$<cmd>:Telescope colorscheme<CR>\18cbuffer_fuzzy\1\0\2\bkey\15<leader>fb\bcmd2<cmd>:Telescope current_buffer_fuzzy_find<CR>\14man_pages\1\0\2\bkey\15<leader>mh\bcmd\"<cmd>:Telescope man_pages<CR>\15git_statsh\1\0\2\bkey\15<leader>gh\bcmd\"<cmd>:Telescope git_stash<CR>\15git_status\1\0\2\bkey\15<leader>gs\bcmd#<cmd>:Telescope git_status<CR>\17git_branches\1\0\2\bkey\15<leader>gr\bcmd%<cmd>:Telescope git_branches<CR>\17git_bcommits\1\0\2\bkey\15<leader>gb\bcmd%<cmd>:Telescope git_bcommits<CR>\16git_commits\1\0\2\bkey\15<leader>gc\bcmd$<cmd>:Telescope git_commits<CR>\tgrep\1\0\2\bkey\15<leader>fg\bcmd\"<cmd>:Telescope live_grep<CR>\15find_files\1\0\2\bkey\15<leader>ff\bcmd#<cmd>:Telescope find_files<CR>\19open_telescope\1\0\0\1\0\2\bkey\14<leader>f\bcmd\24<cmd>:Telescope<CR>\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\6\0\0\19node_modules/*\vdist/*\fbuild/*\v.git/*\a*~\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n”\1\0\0\4\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0015\0\a\0005\1\6\0=\1\b\0006\1\t\0\18\3\0\0B\1\2\1K\0\1\0\23ApplyPluginKeymaps\14open_tree\1\0\0\1\0\2\bkey\14<leader>e\bcmd\29<cmd>:NvimTreeToggle<CR>\tview\1\0\2\tside\nright\nwidth\3\30\1\0\1\15update_cwd\2\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n∑\2\0\0\4\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0015\0\a\0005\1\6\0=\1\b\0006\1\t\0\18\3\0\0B\1\2\1K\0\1\0\23ApplyPluginKeymaps\19toggle_trouble\1\0\0\1\0\2\bkey\15<leader>xx\bcmd\28<cmd>:TroubleToggle<CR>\nsigns\1\0\5\nother\bÔ´†\nerror\bÔôô\16information\bÔëâ\thint\bÔ†µ\fwarning\bÔî©\1\0\5\14auto_fold\2\17auto_preview\1\15auto_close\2\14auto_open\1\25use_diagnostic_signs\2\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
