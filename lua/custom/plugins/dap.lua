return {
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      'leoluz/nvim-dap-go',
      'mfussenegger/nvim-dap-python',
      'rcarriga/nvim-dap-ui',
      'theHamsta/nvim-dap-virtual-text',
      'nvim-neotest/nvim-nio',
      'williamboman/mason.nvim',
    },
    config = function()
      local dap = require 'dap'
      local ui = require 'dapui'

      dap.defaults.terminateDebuggee = false

      ui.setup {
        controls = {
          element = 'repl',
          enabled = true,
          icons = {
            disconnect = '',
            pause = '',
            play = '',
            run_last = '',
            step_back = '',
            step_into = '',
            step_out = '',
            step_over = '',
            terminate = '',
          },
        },
        element_mappings = {},
        expand_lines = true,
        floating = {
          border = 'single',
          mappings = {
            close = { 'q', '<Esc>' },
          },
        },
        force_buffers = true,
        icons = {
          collapsed = '',
          current_frame = '',
          expanded = '',
        },
        layouts = {
          {
            elements = {
              {
                id = 'scopes',
                size = 0.8,
              },
              {
                id = 'breakpoints',
                size = 0.2,
              },
            },
            position = 'left',
            size = 10,
          },
          {
            elements = {
              {
                id = 'repl',
                size = 0.9,
              },
            },
            position = 'bottom',
            size = 10,
          },
        },
        mappings = {
          edit = 'e',
          expand = { '<CR>', '<2-LeftMouse>' },
          open = 'o',
          remove = 'd',
          repl = 'r',
          toggle = 't',
        },
        render = {
          indent = 1,
          max_value_lines = 100,
        },
      }
      require('dap-go').setup()
      require('dap-python').setup '~/dev/venv/bin/python'

      dap.configurations = {
        python = {
          {
            type = 'python',
            request = 'launch',
            name = 'cloud_onboarding_view',
            program = '/Users/lrozen/dev/be3/src/secdo/business_logic/cloud_onboarding/cloud_onboarding_view.py',
            pythonPath = 'python',
            cwd = '/',
          },
          {
            type = 'python',
            request = 'launch',
            name = 'app',
            program = '/Users/lrozen/dev/be3/src/secdo/app.py',
            pythonPath = 'python',
            cwd = '/',
          },
          {
            type = 'python',
            request = 'launch',
            name = 'Launch file',
            program = '${file}',
            pythonPath = 'python',
            cwd = '/',
          },
        },
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
      vim.keymap.set('n', '<F3>', ui.toggle)
      vim.keymap.set('n', '<F4>', dap.step_into)
      vim.keymap.set('n', '<F9>', dap.step_over)
      vim.keymap.set('n', '<F7>', dap.step_out)
      vim.keymap.set('n', '<F6>', dap.step_back)
      vim.keymap.set('n', '<F12>', dap.restart)

      dap.listeners.before.attach.dapui_config = function()
        ui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        ui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        ui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        ui.close()
      end
    end,
  },
}
