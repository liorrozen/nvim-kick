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

      require('dapui').setup()
      require('dap-go').setup()
      require('dap-python').setup '~/dev/nimbleway/ex1/venv/bin/python'

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

      -- Eval var under cursor
      vim.keymap.set('n', '<space>?', function()
        require('dapui').eval(nil, { enter = true })
      end)

      vim.keymap.set('n', '<F2>', dap.continue)
      vim.keymap.set('n', '<F4>', dap.step_into)
      vim.keymap.set('n', '<F9>', dap.step_over)
      vim.keymap.set('n', '<F7>', dap.step_out)
      vim.keymap.set('n', '<F6><F6>', dap.step_back)
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
