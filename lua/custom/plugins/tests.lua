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

-- require("aerial").setup({
--   -- optionally use on_attach to set keymaps when aerial has attached to a buffer
--   on_attach = function(bufnr)
--     -- Jump forwards/backwards with '{' and '}'
--     vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
--     vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
--   end,
-- })
-- You probably also want to set a keymap to toggle aerial
-- vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle!<CR>')

return {
  'tpope/vim-fugitive',
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  'MaximilianLloyd/ascii.nvim',
  { 'Bilal2453/luvit-meta', lazy = true },
  {
    'gennaro-tedesco/nvim-jqx',
    event = { 'BufReadPost' },
    ft = { 'json', 'yaml' },
  },
  'carlsmedstad/vim-bicep',
}
