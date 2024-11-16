local toggle_cursorline = vim.api.nvim_create_augroup('toggle_cursorline', { clear = true })

-- vim.cmd 'set fillchars+=stlnc:⎽'

-- Set github style diff colors

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
    vim.cmd 'hi MiniStatuslineFilename cterm=reverse guibg=#333333 guifg=#c3e88d'
    vim.cmd 'hi MiniStatuslineInactive guifg=#000000 guibg = #555555'
    -- vim.api.nvim_set_hl(0, 'StatusLine', { bg = '#333333', fg = '#00ff00' })
    -- vim.api.nvim_set_hl(0, 'StatusLineINC', { bg = '#FF3333' })
    -- vim.api.nvim_set_hl(0, 'VertSplit', { guifg = '#FF0000' })
  end,
}
