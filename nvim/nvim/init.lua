require('maelstrom')

vim.o.compatible = false
vim.o.hidden = true
vim.o.belloff = 'all'
vim.o.errorbells = false
vim.o.visualbell = false
vim.o.number = true
vim.o.relativenumber = true
vim.o.nrformats = vim.o.nrformats .. ',alpha'
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.history = 1000
vim.o.linebreak = true
vim.o.hlsearch = true
vim.o.smartindent = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
