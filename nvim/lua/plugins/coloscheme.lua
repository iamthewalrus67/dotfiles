return  { -- Colorscheme
    'sainnhe/gruvbox-material',
    enabled = true,
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      vim.g.gruvbox_material_enable_italic = false
      vim.o.background = 'dark'
      vim.g.gruvbox_material_background = 'medium'
      vim.cmd.colorscheme('gruvbox-material')
    end,
  }
