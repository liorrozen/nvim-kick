return {
  'igorlfs/nvim-dap-view',
  dependencies = {
    'mfussenegger/nvim-dap',
  },
  opts = {
    winbar = {
      show = true,
      -- You can add a "console" section to merge the terminal with the other views
      sections = { 'scopes', 'exceptions', 'breakpoints', 'repl' },
      default_section = 'repl',
      -- Must be one of the sections declared above
      controls = {
        enabled = true,
        icons = {
          play = '',
          step_into = '',
          step_over = '',
          run_last = '',
          terminate = '',
        },
      },
    },
    windows = {
      height = 30,
      terminal = {
        -- Use the actual names for the adapters you want to hide
        hide = { 'go', 'python' }, -- `go` is known to not use the terminal.
      },
    },
  },
  config = function(_, opts)
    local dv = require 'dap-view'
    local dap = require 'dap'
    dv.setup(opts)

    vim.keymap.set('n', '<F3>', dv.toggle)
    dap.listeners.before.attach['dap-view-config'] = function()
      dv.open()
    end
    dap.listeners.before.launch['dap-view-config'] = function()
      dv.open()
    end
    dap.listeners.before.event_terminated['dap-view-config'] = function()
      dv.close()
    end
    dap.listeners.before.event_exited['dap-view-config'] = function()
      dv.close()
    end
  end,
}
