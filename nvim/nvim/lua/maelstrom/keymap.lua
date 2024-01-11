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
vim.keymap.set('n', '<leader>pp', vim.cmd.bp)
vim.keymap.set('n', '<leader>nn', vim.cmd.bn)
vim.keymap.set('n', '<leader>dd', vim.cmd.bd)
vim.keymap.set('n', '<leader>jj', '<C-w>j')
vim.keymap.set('n', '<leader>kk', '<C-w>k')
vim.keymap.set('n', '<leader>hh', '<C-w>h')
vim.keymap.set('n', '<leader>ll', '<C-w>l')

-- Search Utility
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
