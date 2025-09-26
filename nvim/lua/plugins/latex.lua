return {
  {
    "let-def/texpresso.vim",
    ft = 'tex',
    cond = function () -- shouln't be loaded if texpresso is not installed
        return vim.fn.executable 'texpresso' == 1
    end
  }
}
