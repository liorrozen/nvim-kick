local toggle_cursorline = vim.api.nvim_create_augroup('toggle_cursorline', { clear = true })

-- Enable cursorline in the appropriate events
vim.api.nvim_create_autocmd({ 'VimEnter', 'WinEnter', 'BufWinEnter' }, {
  pattern = '*',
  group = 'toggle_cursorline',
  callback = function()
    vim.opt_local.cursorline = true
  end,
})

-- Disable cursorline when leaving the window
vim.api.nvim_create_autocmd('WinLeave', {
  pattern = '*',
  group = 'toggle_cursorline',
  callback = function()
    vim.opt_local.cursorline = false
  end,
})

return {
  'marko-cerovac/material.nvim',
  config = function()
    vim.cmd 'colorscheme material-oceanic'
    vim.cmd 'hi MiniStatuslineModeNormal cterm=reverse gui=reverse guifg=#c3e88d'
  end,
}
