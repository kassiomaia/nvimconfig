-- save theme
function SaveTheme()
  -- if not, set it to default
  if not vim.g.colors_name then
    vim.g.colors_name = 'default'
  end

  local filename = ".nvimrc"
  local file = io.open( filename, "w" )

  if file then
    file:write("colorscheme " .. vim.g.colors_name .. "\n")
    file:write("set background=" .. vim.o.background .. "\n")
    file:close()
  end
end

-- load theme
function LoadTheme()
  local filename = ".nvimrc"
  local file = io.open( filename, "r" )
  if file then
    for line in file:lines() do
      vim.cmd(line)
    end
    file:close()
  end
end

function ToggleBackground()
  if vim.o.background == "dark" then
    vim.o.background = "light"
  else
    vim.o.background = "dark"
  end

  SaveTheme()
end

-- add event when colorscheme is changed
vim.cmd("autocmd ColorScheme * lua SaveTheme()")

-- load theme on startup
vim.cmd("autocmd VimEnter * lua LoadTheme()")

-- add keybindings
vim.api.nvim_set_keymap('n', '<leader>ts', ':lua ToggleBackground()<CR>', {noremap = true, silent = true})
