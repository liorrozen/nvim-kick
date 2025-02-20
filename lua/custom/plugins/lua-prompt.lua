vim.keymap.set('n', '<leader>l', ':LuaPrompt<cr>')

return {
  {
    'liangxianzhe/floating-input.nvim',
    config = function()
      vim.api.nvim_create_user_command(
        'LuaPrompt', -- Custom command name
        function()
          vim.ui.input({ prompt = 'Enter value: ' }, function(input)
            local f = loadstring(input)
            f()
          end)
        end,
        {}
      )
    end,
  },
}
