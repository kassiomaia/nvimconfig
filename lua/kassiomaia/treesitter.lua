require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    'bash',
    'c',
    'cpp',
    'css',
    'dockerfile',
    'go',
    'gomod',
    'graphql',
    'html',
    'javascript',
    'json',
    'lua',
    'regex',
    'rust',
    'toml',
    'tsx',
    'typescript',
    'yaml',
    'vim',
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  },
  additonal_vim_regex_highlighting = false,
}

