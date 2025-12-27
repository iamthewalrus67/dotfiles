local texpresso_active = false

function ToggleTeXpresso()
  if texpresso_active then
    vim.cmd('silent! !pkill -f texpresso')
    texpresso_active = false
    print("TeXpresso Stopped")
  else
    vim.cmd('TeXpresso %')
    texpresso_active = true
    print("TeXpresso Started")
  end
end
return {
    {
    "lervag/vimtex",
    lazy = false,     -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      -- vim.g.vimtex_view_method = "okular"
      
      vim.g.vimtex_view_general_viewer = 'okular'
      vim.g.vimtex_view_general_options = '--unique file:@pdf\\#src:@line@tex'
      vim.g.vimtex_compiler_method = "tectonic"
      vim.g.vimtex_compiler_enabled = 1

    end
    },
  {
    "let-def/texpresso.vim",
    ft = 'tex',
    cond = function () -- shouln't be loaded if texpresso is not installed
        return vim.fn.executable 'texpresso' == 1
    end,
    config = function ()
      vim.keymap.set('n', '<leader>lp', ToggleTeXpresso, { desc = 'Toggle TeXpresso Preview', noremap = true })
    end
  }
}
