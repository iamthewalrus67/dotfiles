
return {
  {
    'romgrk/barbar.nvim',
    enabled = false,
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },

  {
    "akinsho/bufferline.nvim",
    enabled = true,
    config = function ()
      require('bufferline').setup({})

      vim.keymap.set("n", "L", ":BufferLineCycleNext<CR>", { desc = "Next buffer", silent = true })
      vim.keymap.set("n", "H", ":BufferLineCyclePrev<CR>", { desc = "Previous buffer", silent = true })
      vim.keymap.set("n", "<leader>l", ":BufferLineMoveNext<CR>", { desc = "Move buffer right", silent = true })
      vim.keymap.set("n", "<leader>h", ":BufferLineMovePrev<CR>", { desc = "Move buffer left", silent = true })
    end
  }
}
