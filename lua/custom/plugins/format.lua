-- local formatting = vim.api.nvim_create_augroup('formatting', { clear = true })
-- vim.api.nvim_create_autocmd({ 'BufEnter', 'BufNew' }, {
--   group = 'formatting',
--   pattern = '*',
--   callback = function()
--     vim.cmd 'let l = line(".")'
--     vim.cmd 'let c = col(".")'
--     vim.cmd '%s/s+$//e'
--     vim.cmd 'call cursor(l, c)'
--   end,
-- })
--

-- vim.cmd 'set no' -- foo
vim.cmd 'set shiftwidth=2'
return {}
