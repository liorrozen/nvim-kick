-- Toggle last buffer
vim.keymap.set('n', '\\b', ':b#<CR>')

-- Toggle spelling
vim.keymap.set('n', '<LEADER>sp', ':set invspell<CR>')

-- Toggle relative line numbers
vim.keymap.set('n', '<LEADER>ln', ':set invrnu<CR>')

-- Move Lines [e and ]e (ALL MODES)
-- up
vim.keymap.set('n', '[e', 'mz:m-2<cr>`z==')
vim.keymap.set('n', ']e', 'mz:m-2<cr>`z==')
vim.keymap.set('i', ']e', '<esc>:m-2<cr>==gi')
vim.keymap.set('v', ']e', ":m'<-2<cr>gv=`>my`<mzgv`yo`z")

-- down
vim.keymap.set('n', '[e', 'mz:m+<CR>`z==')
vim.keymap.set('i', '[e', '<Esc>:m+<CR>==gi')
vim.keymap.set('v', '[e', ":m'>+<CR>gv=`<my`>mzgv`yo`z")

return {}
