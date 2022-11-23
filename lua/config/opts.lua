local opt = vim.opt

vim.opt.termguicolors = true

vim.cmd('colorscheme onedark')
opt.mouse = 'a'
opt.backup = false
opt.writebackup = false
opt.updatetime = 300
opt.signcolumn = 'yes'
opt.splitbelow = true
opt.splitright = true

opt.background = 'dark'

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

