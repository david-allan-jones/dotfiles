return {
  'rebelot/kanagawa.nvim',
  priority = 1000,
  init = function()
    vim.cmd.colorscheme 'kanagawa'
    vim.cmd.hi 'Comment gui=none'
  end,
}
