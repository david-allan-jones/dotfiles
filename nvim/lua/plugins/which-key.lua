return {
  'folke/which-key.nvim',
  event = 'VimEnter',
  config = function()
    print 'hit'
    require('which-key').setup()
    require('which-key').add {
      { '<leader>c', group = '[C]ode' },
      { '<leader>d', group = '[D]ocument' },
      { '<leader>e', group = '[E]xplore' },
      { '<leader>r', group = '[R]ename' },
      { '<leader>s', group = '[S]earch' },
      { '<leader>w', group = '[W]orkspace' },
      { '<leader>[]', group = '[] Window' },
    }
  end,
}
