return {
  'tpope/vim-dotenv',
  config = function()
    -- Define a custom command that wraps `Telescope find_files`
    vim.api.nvim_create_user_command(
      'PyxdrEnvVars', -- Custom command name
      function()
        vim.cmd 'Dotenv /tmp/.*_env'
      end,
      {}
    )
  end,
}
