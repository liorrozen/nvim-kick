return {
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      'leoluz/nvim-dap-go',
      'mfussenegger/nvim-dap-python',
      -- 'rcarriga/nvim-dap-ui',
      -- 'igorlfs/nvim-dap-view',
      'theHamsta/nvim-dap-virtual-text',
      'nvim-neotest/nvim-nio',
      'williamboman/mason.nvim',
    },
    config = function()
      local dap = require 'dap'
      -- local ui = require 'dapui'
      -- local ui = require 'dap-view'

      dap.defaults.terminateDebuggee = false

      require('dap-go').setup()
      require('dap-python').setup '~/dev/venv/bin/python'

      dap.configurations = {
        python = {
          {
            type = 'python',
            request = 'launch',
            name = 'caom/main.py',
            program = '/Users/lrozen/dev/be3/src/secdo/single_tenant_services/caom/main.py',
            pythonPath = 'python',
            cwd = '/Users/lrozen/dev/be3/',
          },
          {
            type = 'python',
            request = 'launch',
            name = 'app.py',
            program = '/Users/lrozen/dev/be3/src/secdo/app.py',
            pythonPath = 'python',
            cwd = '/Users/lrozen/dev/be3/',
          },
          {
            type = 'python',
            request = 'launch',
            name = 'Launch file',
            program = '${file}',
            pythonPath = 'python',
            cwd = '/Users/lrozen/dev/be3/',
          },
        },
      }

      dap.adapters.mix_task = {
        type = 'executable',
        command = BASH_DEBUG_ADAPTER_BIN,
      }
      local elixir_ls_debugger = vim.fn.exepath 'elixir-ls-debugger'
      if elixir_ls_debugger ~= '' then
        dap.adapters.mix_task = {
          type = 'executable',
          command = elixir_ls_debugger,
        }

        dap.configurations.elixir = {
          {
            type = 'mix_task',
            name = 'phoenix server',
            task = 'phx.server',
            request = 'launch',
            projectDir = '${workspaceFolder}',
            exitAfterTaskReturns = false,
            debugAutoInterpretAllModules = false,
          },
        }
      end

      vim.keymap.set('n', '<space>b', dap.toggle_breakpoint)
      vim.keymap.set('n', '<space>gb', dap.run_to_cursor)

      vim.api.nvim_create_user_command(
        'Breakpoints', -- Custom command name
        function()
          require('dap').list_breakpoints()
          vim.cmd 'Telescope quickfix'
        end,
        {}
      )

      vim.keymap.set('n', '<F2>', dap.continue)
      vim.keymap.set('n', '<F4>', dap.step_into)
      vim.keymap.set('n', '<F9>', dap.step_over)
      vim.keymap.set('n', '<F7>', dap.step_out)
      vim.keymap.set('n', '<F6>', dap.step_back)
      vim.keymap.set('n', '<F12>', dap.restart)
    end,
  },
}
