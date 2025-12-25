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
