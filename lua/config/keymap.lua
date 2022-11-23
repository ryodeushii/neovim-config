-- nvim tree actions
vim.api.nvim_set_keymap('n','<C-n>',':NvimTreeToggle<cr>',{noremap = true})


vim.api.nvim_set_keymap('n','<C-b>',':NvimTreeFocus<cr>',{noremap = true})

-- telescope actions
vim.api.nvim_set_keymap('n','<leader>ff',[[<Cmd>Telescope find_files<cr>]],{noremap = true})
vim.api.nvim_set_keymap('n','<leader>fg',[[<Cmd>Telescope live_grep<cr>]],{noremap = true}) 
vim.api.nvim_set_keymap('n','<leader>fb',[[<Cmd>Telescope buffers<cr>]],{noremap = true})
vim.api.nvim_set_keymap('n','<leader>fh',[[<Cmd>Telescope help_tags<cr>]],{noremap = true})

-- buffers navigation 
vim.api.nvim_set_keymap('n','<C-J>','<C-W><C-J>',{noremap = true}) 
vim.api.nvim_set_keymap('n','<C-K>','<C-W><C-K>',{noremap = true}) 
vim.api.nvim_set_keymap('n','<C-L>','<C-W><C-L>',{noremap = true}) 
vim.api.nvim_set_keymap('n','<C-H>','<C-W><C-H>',{noremap = true}) 
