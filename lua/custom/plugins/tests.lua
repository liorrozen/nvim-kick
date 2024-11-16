-- vim.cmd 'hi StatusLine ctermbg=blue ctermfg=red'
vim.cmd 'set completeopt=longest,menuone'
vim.cmd 'set nowrap'

require('lspconfig').terraformls.setup {}
vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
  pattern = { '*.tf', '*.tfvars' },
  callback = function()
    vim.lsp.buf.format()
  end,
})

return {
  'tpope/vim-fugitive',
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  'eandrju/cellular-automaton.nvim',
  'MaximilianLloyd/ascii.nvim',
  { 'Bilal2453/luvit-meta', lazy = true },
}
