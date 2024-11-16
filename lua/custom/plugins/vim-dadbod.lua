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
    cmp.setup.buffer {
      sources = {
        { name = 'vim-dadbod-completion' },
      },
    }
  end,
})

return {
  'tpope/vim-dadbod',
  'kristijanhusak/vim-dadbod-ui',
  'kristijanhusak/vim-dadbod-completion', -- Optional
}
