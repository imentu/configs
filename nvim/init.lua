require('basic')
require('plugins')
require('keybindings')

require('plugin-config/nvim-tree')
require('plugin-config/bufferline')

require('lsp/setup')
require('lsp/nvim-cmp')

vim.api.nvim_command [[set background=dark]]
vim.api.nvim_command [[colorscheme zephyr]]
