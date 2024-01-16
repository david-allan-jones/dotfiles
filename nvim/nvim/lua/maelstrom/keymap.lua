vim.g.mapleader = ' '

-- Misc
vim.keymap.set('i', 'jj', '<Esc>')

-- Paste without overwriting 
vim.keymap.set('v', 'p', '"_dP')

-- Yank to end of line
vim.keymap.set('n', 'Y', 'y$')

-- NOPs
vim.keymap.set('n', '<Up>', '<NOP>')
vim.keymap.set('n', '<Down>', '<NOP>')
vim.keymap.set('n', '<Left>', '<NOP>')
vim.keymap.set('n', '<Right>', '<NOP>')

vim.keymap.set('n', '<C-f>', '<C-f>zz')
vim.keymap.set('n', '<C-b>', '<C-b>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Buffer/Window Shortcuts
vim.keymap.set('n', '<S-h>', vim.cmd.bp)
vim.keymap.set('n', '<S-l>', vim.cmd.bn)
vim.keymap.set('n', '<leader>bd', vim.cmd.bd)
vim.keymap.set('n', '<leader>v', vim.cmd.vsplit)
vim.keymap.set('n', '<leader>s', vim.cmd.split)
vim.keymap.set('n', '<leader>j', '<C-w>j')
vim.keymap.set('n', '<leader>k', '<C-w>k')
vim.keymap.set('n', '<leader>h', '<C-w>h')
vim.keymap.set('n', '<leader>l', '<C-w>l')

-- Search Utility
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
