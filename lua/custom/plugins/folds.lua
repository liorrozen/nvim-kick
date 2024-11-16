-- UFO folding
vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

return {
  -- UFO folding
  {
    'kevinhwang91/nvim-ufo',
    dependencies = {
      'kevinhwang91/promise-async',
      {
        'luukvbaal/statuscol.nvim',
        config = function()
          local builtin = require 'statuscol.builtin'
          require('statuscol').setup {
            relculright = true,
            --f oo
            segments = {
              { text = { builtin.foldfunc }, click = 'v:lua.ScFa' },
              -- foo
              { text = { '%s' }, click = 'v:lua.ScSa' },
              { text = { builtin.lnumfunc, ' ' }, click = 'v:lua.ScLa' },
            },
            vim.api.nvim_set_hl(0, 'FoldColumn', { fg = '#aaaaaa' }),
          }
        end,
      },
    },
    event = 'BufReadPost',
    opts = {
      provider_selector = function()
        return { 'treesitter', 'indent' }
      end,
    },

    init = function()
      vim.cmd 'set fillchars+=foldopen:▽,foldclose:▶,foldsep:\\ '
      vim.keymap.set('n', 'zR', function()
        require('ufo').openAllFolds()
      end)
      vim.keymap.set('n', 'zM', function()
        require('ufo').closeAllFolds()
      end)
    end,
  },
}
