return {
  {
   "f-person/git-blame.nvim",
    -- load the plugin at startup
    event = "VeryLazy",
    config = function ()
      require('gitblame').setup({
        message_template = " <summary> • <date> • <author> • <<sha>>", -- template for the blame message, check the Message template section for more options
        date_format = "%d-%m-%Y %H:%M:%S", -- template for the date, check Date format section for more options
        virtual_text_column = 0,  -- virtual text start column, check Start virtual text at column section for more options
      })

      vim.keymap.set('n', '<leader>gb', ':GitBlameToggle<CR>', {noremap=true, desc='[G]it [B]lame'})
      vim.cmd('GitBlameDisable')
    end
  },
  { -- git diff
    'sindrets/diffview.nvim',
    config = function ()
      require('diffview').setup({})
      vim.g.diff_open = false
      local toggleDiff = function()
          if vim.g.diff_open then
            vim.cmd('DiffviewClose')
          else
            vim.cmd('DiffviewOpen')
          end
          vim.g.diff_open = not vim.g.diff_open
      end
      vim.keymap.set('n', '<leader>gd', toggleDiff, { desc = 'Toggle [G]it [D]iff view' })
    end,
  },
}
