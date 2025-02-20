-- local function list_all_buffers()
--   local buffers = {}
--   for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
--     -- Get buffer info
--     local bufname = vim.api.nvim_buf_get_name(bufnr)
--     local listed = vim.api.nvim_buf_get_option(bufnr, 'buflisted')
--     local loaded = vim.api.nvim_buf_is_loaded(bufnr)
--
--     -- Add all buffers, even if hidden/unlisted
--     table.insert(buffers, bufnr, name = bufname, listed = listed, loaded = loaded })
--   end
--   return buffers
-- end
--
-- local function find_buffer_by_partial_name(partial_name)
--   for _, bufnr in ipairs(list_all_buffers()) do
--     local bufname = vim.api.nvim_buf_get_name(bufnr)
--     if bufname:match(partial_name) then
--       return bufnr -- Return the first matching buffer
--     end
--   end
--   return -1 -- Return -1 if no match is found
-- end
--
-- local function run_on_buffer()
--   local bufname = 'dap-repl' -- Change this to your desired buffer name
--   local bufnr = find_buffer_by_partial_name(bufname)
--
--   if bufnr ~= -1 and vim.api.nvim_buf_is_loaded(bufnr) then
--     local mode = vim.fn.mode()
--     if mode == 'n' then -- Only run if in Normal mode
--       vim.api.nvim_buf_call(bufnr, function()
--         -- local current_buf = vim.api.nvim_get_current_buf() -- Save the current buffer
--
--         -- Switch to target buffer
--         -- vim.api.nvim_set_current_buf(bufnr)
--
--         -- Simulate pressing "G" to scroll to the bottom
--         -- bufnr = vim.api.nvim_get_current_buf() -- Save the current buffer
--         vim.api.nvim_feedkeys('G', 'n', false)
--
--         -- Switch back to the original buffer
--         -- vim.api.nvim_set_current_buf(current_buf)
--       end)
--     end
--   end
--
--   -- Reschedule the function to run again in 5000ms (5 seconds)
--   -- vim.defer_fn(run_on_buffer, 5000)
-- end
--
-- -- Start the loop when Neovim starts
-- vim.defer_fn(run_on_buffer, 5000)

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
                id = 'repl',
                size = 0.9,
              },
            },
            position = 'bottom',
            size = 10,
          },
          {
            elements = {
              {
                id = 'scopes',
                size = 0.4,
              },
              {
                id = 'breakpoints',
                size = 0.4,
              },
            },
            position = 'left',
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
          {
            type = 'python',
            request = 'launch',
            name = 'connector_templates/service.py',
            program = '/Users/lrozen/dev/be3/src/secdo/business_logic/cloud_onboarding/connector_templates/service.py',
            pythonPath = 'python',
            cwd = '/Users/lrozen/dev/be3/',
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
