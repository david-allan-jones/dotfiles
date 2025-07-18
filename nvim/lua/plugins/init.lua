-- See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
  { import = 'plugins.vim-sleuth' },
  { import = 'plugins.gitsigns' },
  { import = 'plugins.telescope' },
  { import = 'plugins.lazydev' },
  { import = 'plugins.luvit-meta' },
  { import = 'plugins.kanagawa' },
  { import = 'plugins.todo-comments' },
  { import = 'plugins.nvim-treesitter' },
  { import = 'plugins.nvim-lspconfig' },
  { import = 'plugins.conform' },
  { import = 'plugins.nvim-cmp' },
  { import = 'plugins.mini' },
  { import = 'plugins.which-key' },
  { import = 'plugins.vim-tmux-navigator' },
}
