return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function ()
    -- vim.keymap.set('n', '<C-t>', ':ToggleTerm<CR>', { desc = 'ToggleTerm' })
    require('toggleterm').setup({
      open_mapping = [[<c-\>]],
    })
  end
}

