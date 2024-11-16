vim.keymap.set('n', ',gs', ':G<CR>')
vim.keymap.set('n', ',gp', ':G push<CR>')
vim.cmd 'set diffopt=vertical'

vim.cmd 'let g:fugitive_gitlab_domains = ["https://gitlab.xdr.pan.local"]'
vim.cmd 'let g:fugitive_gitlab_oldstyle_urls = 1'

return {
  'shumphrey/fugitive-gitlab.vim',
  'tpope/vim-fugitive',
}
