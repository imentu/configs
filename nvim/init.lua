require('basic')
require('plugins')
require('keybindings')

require('plugin-config/nvim-tree')
require('plugin-config/bufferline')

vim.api.nvim_command [[set background=dark]]
vim.api.nvim_command [[colorscheme zephyr]]
