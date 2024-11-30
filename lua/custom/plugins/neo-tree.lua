return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      close_if_last_window = true,
      window = {
        mappings = {
          ['/'] = {},
        },
        filesystem = {
          window = {
            mapping_options = {
              noremap = true,
              nowait = false,
            },
          },
        },
        keys = {
          { '/', false }, -- Unbinds the default / key for Neo-tree
        },
      },
    }
  end,
}
