vim.keymap.set('n', '<leader>db', ':DBUIToggle<cr>')

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'dbout' },
  callback = function()
    vim.opt.foldenable = false
  end,
})

-- autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'sql', 'mysql', 'plsql' },
  callback = function()
    local cmp = require 'cmp'
    cmp.setup.buffer {
      sources = {
        { name = 'vim-dadbod-completion' },
      },
    }
  end,
})

vim.cmd 'let g:db_ui_use_nerd_fonts = 1'
return {
  'tpope/vim-dadbod',
  'kristijanhusak/vim-dadbod-ui',
  'kristijanhusak/vim-dadbod-completion', -- Optional
}
