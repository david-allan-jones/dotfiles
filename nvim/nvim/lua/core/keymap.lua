local set = vim.keymap.set

-----------------------------------------------------
--                    disabled                     --
-----------------------------------------------------
local disable = function(key_t)
  for _, v in pairs(key_t) do
    vim.keymap.set('n', v, '')
  end
end

disable {
  '<Up>',
  '<Down>',
  '<Left>',
  '<Right>',
}

-----------------------------------------------------
--             explore (namespaced)                --
-----------------------------------------------------
local explore_map = function(lhs, rhs, postfix)
  set('n', '<leader>e' .. lhs, rhs, { desc = '[E]xplore ' .. postfix })
end

explore_map('c', ':e ~/.config/nvim<CR>', '[C]onfig')
explore_map('g', ':e ~/repos<CR>', '[Git] Repos')
explore_map('h', ':e %:h<CR>', '[H]ere')
explore_map('o', ':e %:h<CR>', '[O]riginal')
explore_map('r', ':e ~/<CR>', '[R]oot')

-----------------------------------------------------
--              window (namespaced)                --
-----------------------------------------------------
local window_map = function(lhs, rhs, postfix)
  set('n', '<leader>[]' .. lhs, rhs, { desc = '[] Window ' .. postfix })
end

window_map('"', ':vsplit<CR>', 'Vertical')
window_map('%', ':split<CR>', 'Horizontal')
window_map('d', '<c-w>q', 'Delete')

-----------------------------------------------------
--                    yank                         --
-----------------------------------------------------
set('n', 'Y', 'y$')

-----------------------------------------------------
--                  navigations                    --
-----------------------------------------------------
set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

set('n', '<S-h>', ':bp<CR>', { desc = 'Move to previous buffer' })
set('n', '<S-l>', ':bn<CR>', { desc = 'Move to next buffer' })
set('n', '<leader>bd', ':bd<CR>', { desc = 'Delete buffer' })

set('n', '<c-d>', '<c-d>zz', { desc = 'Half page scroll up + center' })
set('n', '<c-u>', '<c-u>zz', { desc = 'Half page scroll down + center' })

-----------------------------------------------------
--                    others                      --
-----------------------------------------------------
set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
set('n', '<Esc>', '<cmd>nohlsearch<CR>')
set('n', 'U', '<c-r>', { desc = 'Redo' })
set('i', 'jj', '<Esc>', { desc = 'Exit Insert Mode => Normal' })
