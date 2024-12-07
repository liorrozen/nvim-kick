return {
  {
    'eandrju/cellular-automaton.nvim', -- fml (make it rain)
    config = function()
      -- Make it rain
      vim.keymap.set('n', '<leader>fml', '<cmd>CellularAutomaton make_it_rain<CR>')
    end,
  },
  {
    'seandewar/killersheep.nvim',
    config = function()
      require('killersheep').setup {
        gore = true, -- Enables/disables blood and gore.
        keymaps = {
          move_left = 'h', -- Keymap to move cannon to the left.
          move_right = 'l', -- Keymap to move cannon to the right.
          shoot = '<Space>', -- Keymap to shoot the cannon.
        },
      }
    end,
  },
}
