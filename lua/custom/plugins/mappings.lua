-- Toggle last buffer
vim.keymap.set('n', '\\b', ':b#<CR>')

-- Tree
vim.keymap.set('n', '<leader>e', ':Neotree toggle dir=`=getcwd()`<cr>')
vim.keymap.set('n', '<leader>E', ':Neotree reveal_file=%:p<cr>')

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

-- Make it rain
vim.keymap.set('n', '<leader>fml', '<cmd>CellularAutomaton make_it_rain<CR>')

-- Quick saves
vim.keymap.set('n', '<LEADER>w', ':w<CR>')

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', 'Q', ':q<cr>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Keybinds to make split navigation easier.
-- Use CTRL+<hjkl> to switch between windows
-- See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', 't', ':tabnext<cr>', { desc = 'Next [t]ab' })
vim.keymap.set('n', 'T', ':tabprev<cr>', { desc = 'Previous [T]ab' })

return {}
