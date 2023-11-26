require('pkg')
require('remap')

-- Load plugin
require('treesitter')
require('lsp')

require("nvim-autopairs").setup()
require("bufferline").setup()
require('lualine').setup()

-- Set configs
vim.cmd 'colorscheme rose-pine'

vim.opt.nu = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 4

vim.opt.updatetime = 50

vim.opt.cursorline = true
