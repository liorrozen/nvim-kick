vim.keymap.set('n', ',gs', ':G<CR>')
vim.keymap.set('n', ',gp', ':G push<CR>')
vim.cmd 'set diffopt=vertical'

return {
  'tpope/vim-fugitive',
}
