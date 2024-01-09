vim.api.nvim_set_keymap('i', 'jj', '<Esc>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Esc><Esc>', ':noh<CR><Esc>', {noremap = true})

vim.api.nvim_set_keymap('n', '<Up>', '<NOP>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Down>', '<NOP>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Left>', '<NOP>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Right>', '<NOP>', {noremap = true})

vim.api.nvim_set_keymap('n', '<C-f>', '<C-f>zz', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-b>', '<C-b>zz', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', {noremap = true})
vim.api.nvim_set_keymap('n', '<Space>', '/', {noremap = true})

